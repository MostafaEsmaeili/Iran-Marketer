using System;
using System.Linq;
using Microsoft.AspNet.Identity;
using TadbirPardaz.AM.Common;
using TadbirPardaz.AM.UserManagement;
using TadbirPardaz.Infrastructure.IoC;

namespace Sahra.MutualFund.UserManagement
{
    public class AuthorizationProvider
    {
        public IServiceAccessService ServiceAccessService => Core.Container.Resolve<IServiceAccessService>();
        public IServiceRepositoryService ServiceRepositoryService => Core.Container.Resolve<IServiceRepositoryService>();

        private CommonLogger Logger => new CommonLogger(GetType().FullName);
        public bool IsAccessWebRequest(ApplicationUser applicationUser, string serviceMethodName, string controller)
        {
            try
            {
                if (applicationUser.IsCustomizedAccess)
                {
                    var repository = ServiceRepositoryService.GetServiceRepository(controller.Trim(), serviceMethodName.Trim());
                    return repository != null && ServiceAccessService.IsAccess(null, applicationUser.Id, repository.Id);
                }
                else
                {
                    var repository = ServiceRepositoryService.GetServiceRepository(controller.Trim(), serviceMethodName.Trim());
                    var role = AuthenticationManager.AuthenticationProvider.UserManager.GetRoles(applicationUser.Id);
                    var roleList =
                        role.Select(x => AuthenticationManager.AuthenticationProvider.RoleManager.FindByName(x))
                            .FirstOrDefault();
                    ///Check In Role Level Authorization
                    return repository != null && ServiceAccessService.IsAccess(roleList.Id,null, repository.Id);
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public ApplicationUser GetApplicationUserById(string userId)
        {
            try
            {
                return ServiceAccessService.GetApplicationUserById(userId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

    }
}
