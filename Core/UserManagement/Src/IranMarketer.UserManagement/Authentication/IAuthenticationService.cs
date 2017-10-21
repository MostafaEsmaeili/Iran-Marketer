using System.Collections.Generic;
using Microsoft.AspNet.Identity.EntityFramework;
using TadbirPardaz.AM.UserManagement;
using TadbirPardaz.Infrastructure.Service;

namespace Sahra.MutualFund.UserManagement
{
    public interface IAuthenticationService : IService<ApplicationUser>
    {
        List<ApplicationUser> GetUsersByRoleId(string roleId);
        List<IdentityRole> GetUserRolesByUsername(string username);
    }
}