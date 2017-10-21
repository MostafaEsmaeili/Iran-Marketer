using System.Collections.Generic;
using Pikad.Framework.Repository;
using IranMarketer.Domain.DTO.ServiceAcces;
using IranMarketer.Domain.Enum;
using FlatServiceAccess = IranMarketer.Domain.Entity.FlatServiceAccess;


namespace IranMarketer.UserManagement
{
    public interface IServiceAccessRepository : IRepository<ServiceAccess,int>
    {
        List<ServiceAccess> GetServiceAccesses();
        bool IsAccess(string roleId, string userId, int serviceId, int? applicationId = null);
        bool IsAccessByUsername(string roleId, string username, int serviceId, int? applicationId = null);
        void UpdateAccess(ServiceAccess access);
        void SaveAccess(ServiceAccess access);
        List<PageType> GetAccessiblePagesByUsername(string username,Applications application);
        List<PageType> GetAccessiblePagesByRoleId(string roleId, Applications application);
        void AddServiceAccessByUserNameAndPage(string username, List<PageType> pageTypes, Applications applications);
        void AddServiceAccessByRoleIdAndPage(string roleId, List<PageAllow> pageTypes, Applications applications);

        List<FlatServiceAccess> GetFlatServiceAccessBasedOnRoles(Applications application);
        List<FlatServiceAccess> GetFlatServiceAccessBasedOnUsers(Applications application);
    }
}
