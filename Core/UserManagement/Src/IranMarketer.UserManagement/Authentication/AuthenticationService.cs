using System;
using System.Collections.Generic;
using Microsoft.AspNet.Identity.EntityFramework;
using TadbirPardaz.AM.Common;
using TadbirPardaz.AM.UserManagement;
using TadbirPardaz.Infrastructure.Service;

namespace Sahra.MutualFund.UserManagement
{
    public class AuthenticationService : Service<ApplicationUser, IAuthenticationDao>, IAuthenticationService
    {
        public CommonLogger Logger => new CommonLogger(GetType().FullName);

        public List<ApplicationUser> GetUsersByRoleId(string roleId)
        {
            try
            {
                return Dao.GetUsersByRoleId(roleId);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                throw;
            }
        }

        public List<IdentityRole> GetUserRolesByUsername(string username)
        {
            try
            {
                return Dao.GetUserRolesByUsername(username);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                throw;
            }
        }
    }
}