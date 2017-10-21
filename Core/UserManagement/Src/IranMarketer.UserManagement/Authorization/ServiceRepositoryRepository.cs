using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;


namespace IranMarketer.UserManagement
{
    public class ServiceRepositoryRepository : Repository<ServiceRepository,int>, IServiceRepositorRepository
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public ServiceRepositoryRowMapper ServiceRepositoryRowMapper = new ServiceRepositoryRowMapper();
        public List<ServiceRepository> GetServiceRepositories()
        {
            try
            {
                return GetAll().ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public ServiceRepository GetServiceRepository(string serviceName, string methodName)
        {
            try
            {
                var sr = Get(x => x.ServiceName == serviceName && x.MethodName == methodName).FirstOrDefault();
                return sr;
              
           
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public int SaveServiceRepository(ServiceRepository serviceRepository)
        {
            try
            {
               return Save(serviceRepository);
 
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }


        public List<ServiceRepository> GetServiceRepositoriesByPageType(PageType pageType)
        {
            try
            {

                var parameter = new DynamicParameters();
                parameter.Add("pageType", (int)pageType, DbType.Int32 );

                var sr = GetAll(new CustomCommand
                {
                    SqlCommand = "sec.GetServiceRepositoriesByPageType",
                    Parameters = parameter,
                    CommandType = CommandType.StoredProcedure
                }, ServiceRepositoryRowMapper);

                return sr.ToList();


            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public ServiceRepositoryRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}
