using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using Dapper;
using Microsoft.AspNet.Identity.EntityFramework;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.DTO.ServiceAcces;
using IranMarketer.Domain.Enum;
using FlatServiceAccess = IranMarketer.Domain.Entity.FlatServiceAccess;


namespace IranMarketer.UserManagement
{
    public class ServiceAccessRepository : Repository<ServiceAccess,int>, IServiceAccessRepository
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        //public Entlib Entlib { get; set; }


        public List<ServiceAccess> GetServiceAccesses()
        {
            try
            {
              return  GetAll().ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public bool IsAccess(string roleId, string userId, int serviceId,int? applicationId=null)
        {
            try
            {
                var parameter=new DynamicParameters();
                
                parameter.Add( "roleid",roleId, DbType.String);
                parameter.Add( "userid", userId, DbType.String);
                parameter.Add( "serviceid", serviceId, DbType.Int32);
                parameter.Add( "applicationId", applicationId, DbType.Int32 );
                var connection = CoreContainer.Container.Resolve<ISession>();
                var res = connection.Query<bool>("sec.IsAccess", parameter, commandType: CommandType.StoredProcedure).FirstOrDefault();
                return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }

        }
        public bool IsAccessByUsername(string roleId, string username, int serviceId, int? applicationId = null)
        {
            try
            {
                var parameter = new DynamicParameters();

                parameter.Add("roleid", roleId, DbType.String);
                parameter.Add("username", username, DbType.String);
                parameter.Add("serviceid", serviceId, DbType.Int32);
                parameter.Add("applicationId", applicationId, DbType.Int32);
                var connection = CoreContainer.Container.Resolve<ISession>();
                var res = connection.Query<bool>("sec.IsAccessByUsername", parameter, commandType: CommandType.StoredProcedure).FirstOrDefault();
                return res;


            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }

        }
        public void SaveAccess(ServiceAccess access)
        {
            try
            {
                Save(access);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<PageType> GetAccessiblePagesByUsername(string username,Applications application)
        {
            try
            {
                var parameter = new DynamicParameters();
                parameter.Add("username", username, DbType.String);
                parameter.Add("applicationId", (int)application, DbType.Int32);
                var connection = CoreContainer.Container.Resolve<ISession>();
                var res = connection.Query<int>("sec.GetAccessiblePagesByUsername", parameter, commandType: CommandType.StoredProcedure).Select(x=>(PageType)x).ToList();

         return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public List<FlatServiceAccess> GetFlatServiceAccessBasedOnRoles( Applications application)
        {
            try
            {
                var parameter = new DynamicParameters();
                parameter.Add("applicationId", (int)application, DbType.Int32);
                var connection = CoreContainer.Container.Resolve<ISession>();
                var res = connection.Query<FlatServiceAccess>("sec.GetFlatServiceAccessBasedOnRoles", parameter, commandType: CommandType.StoredProcedure).ToList();

                return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public List<FlatServiceAccess> GetFlatServiceAccessBasedOnUsers(Applications application)
        {
            try
            {
                var parameter = new DynamicParameters();
                parameter.Add("applicationId", (int)application, DbType.Int32);
                var connection = CoreContainer.Container.Resolve<ISession>();
                var res = connection.Query<FlatServiceAccess>("sec.GetFlatServiceAccessBasedOnUsers", parameter, commandType: CommandType.StoredProcedure).ToList();

                return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public List<PageType> GetAccessiblePagesByRoleId(string roleId, Applications application)
        {
            var res = new List<PageType>();
            try
            {
                var parameter = new DynamicParameters();
                parameter.Add("roleId", roleId, DbType.String);
                parameter.Add("applicationId", (int) application, DbType.Int32);
                var connection = CoreContainer.Container.Resolve<ISession>();
               
                res = connection.Query<int>("sec.GetAccessiblePagesByRoleId", parameter,
                    commandType: CommandType.StoredProcedure).Select(x => (PageType) x).ToList();

                return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public void UpdateAccess(ServiceAccess access)
        {
            try
            {
                var parameter = new DynamicParameters();
                parameter.Add( "Id", access.Id, DbType.Int32);
                parameter.Add("Allow", access.Allow??false, DbType.Boolean);
                Update(new CustomCommand
                {
                    SqlCommand = "sec.UpdateAccess",
                    Parameters = parameter,
                    CommandType = CommandType.StoredProcedure
                });
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public void AddServiceAccessByUserNameAndPage(string username, List<PageType> pageTypes, Applications applications)
        {
            try
            {
               // var parameter = new DynamicParameters();

               // parameter.Add("Usernasme", username, DbType.String);
               // parameter.Add("ApplicationId", (int)applications, DbType.Int32);
               //// var pages = ToDataTable(pageTypes).AsTableValuedParameter("sec.PageTypes");
               // parameter.Add("pages",pages);
               // Save(new CustomCommand
               // {
               //     SqlCommand = "sec.AddServiceAccessByUserNameAndPage",
               //     Parameters = parameter,
               //     CommandType = CommandType.StoredProcedure
               // });

            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        private DataTable ToDataTable(List<PageAllow> pageIds)
        {
            var dt = new DataTable();
            dt.Columns.Add("PageId", typeof(int));
            dt.Columns.Add("Allow", typeof(bool));

            foreach (var page in pageIds)
            {
                var dr = dt.NewRow();
                dr["PageId"] = page.PageId;
                dr["Allow"] = page.Allow;

                dt.Rows.Add(dr);
            }
            return dt;
        }
        public void AddServiceAccessByRoleIdAndPage(string roleId, List<PageAllow> pageTypes, Applications applications)
        {
            try
            {
                var parameter = new DynamicParameters();

                parameter.Add("roleId", roleId, DbType.String);
                parameter.Add("ApplicationId", (int)applications, DbType.Int32);
                var pages = ToDataTable(pageTypes).AsTableValuedParameter("sec.PageAllowTypes");
                parameter.Add("pages", pages);
                Save(new CustomCommand
                {
                    SqlCommand = "sec.AddServiceAccessByRoleIdAndPage",
                    Parameters = parameter,
                    CommandType = CommandType.StoredProcedure
                });
                
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public ServiceAccessRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}
