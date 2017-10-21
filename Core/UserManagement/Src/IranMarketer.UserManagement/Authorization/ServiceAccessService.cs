using System;
using System.Collections.Generic;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Service;
using Pikad.Framework.Infra.Validation;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO.ServiceAcces;
using IranMarketer.Domain.Enum;
using FlatServiceAccess = IranMarketer.Domain.Entity.FlatServiceAccess;


namespace IranMarketer.UserManagement
{
    public class ServiceAccessService : Service<ServiceAccess, IServiceAccessRepository,int>, IServiceAccessService
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public List<ServiceAccess> GetServiceAccesses()
        {
            try
            {
                return Dao.GetServiceAccesses();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public bool IsAccess(string roleId, string userId, int serviceId, int? applicationId = null)
        {
            try
            {
                return Dao.IsAccess(roleId, userId, serviceId,applicationId);
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
                return Dao.IsAccessByUsername(roleId, username, serviceId, applicationId);
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
                Dao.UpdateAccess(access);
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
                Dao.SaveAccess(access);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public List<PageType> GetAccessiblePagesByUsername(string username, Applications application)
        {
            try
            {
                BRule.Assert(!string.IsNullOrEmpty(username), RuleExceptionCodeUserManagement.InvalidUserName.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.InvalidUserName);

                return Dao.GetAccessiblePagesByUsername(username,application);
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
                BRule.Assert(!string.IsNullOrEmpty(username), RuleExceptionCodeUserManagement.InvalidUserName.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.InvalidUserName);

                 Dao.AddServiceAccessByUserNameAndPage(username, pageTypes,applications);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public void AddServiceAccessByRoleIdAndPage(string roleId, List<PageAllow> pageTypes, Applications applications)
        {
            try
            {
                BRule.Assert(!string.IsNullOrEmpty(roleId), RuleExceptionCodeUserManagement.InvalidRole.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.InvalidRole);

                Dao.AddServiceAccessByRoleIdAndPage(roleId, pageTypes, applications);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<FlatServiceAccess> GetFlatServiceAccessBasedOnRoles(Applications application)
        {
            try
            {
       

               return Dao.GetFlatServiceAccessBasedOnRoles(application);
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
                return Dao.GetFlatServiceAccessBasedOnUsers(application);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<PageType> GetAccessiblePagesByRoleId(string roleId, Applications application)
        {
            try
            {
                BRule.Assert(!string.IsNullOrEmpty(roleId), RuleExceptionCodeUserManagement.InvalidUserName.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.InvalidUserName);

                return Dao.GetAccessiblePagesByRoleId(roleId, application);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
