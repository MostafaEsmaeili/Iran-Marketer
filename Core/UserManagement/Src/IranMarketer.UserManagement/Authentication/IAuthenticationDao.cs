using System.Collections.Generic;
using Microsoft.AspNet.Identity.EntityFramework;
using TadbirPardaz.AM.UserManagement;
using TadbirPardaz.Infrastructure.DataAccess.Repositories;

namespace Sahra.MutualFund.UserManagement
{
    public interface IAuthenticationDao  : IDao<ApplicationUser>
    {
        List<ApplicationUser> GetUsersByRoleId(string roleId);
        List<IdentityRole> GetUserRolesByUsername(string username);
    }
}