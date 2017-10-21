using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Microsoft.AspNet.Identity.EntityFramework;
using Sahra.MutualFund.UserManagement.Mapper;
using TadbirPardaz.AM.Common;
using TadbirPardaz.AM.UserManagement;
using TadbirPardaz.Infrastructure.DataAccess;
using TadbirPardaz.Infrastructure.DataAccess.Entlib;

namespace Sahra.MutualFund.UserManagement
{
    public class AuthenticationDao : AbstractDao<ApplicationUser>, IAuthenticationDao
    {
        public CommonLogger Logger => new CommonLogger(GetType().FullName);
        public ApplicationUserRowMapper ApplicationUserRowMapper { get; set; }
        public IdentityRoleRowMapper IdentityRoleRowMapper { get; set; }


        public List<ApplicationUser> GetUsersByRoleId(string roleId)
        {
            try
            {
                var command = Entlib.GetStoredProcCommand("sec.GetUsersByRoleId");
                Entlib.AddInParameter(command, "roleId", DbType.String, roleId);
                return Entlib.ExecuteCommandAccessor(command, ApplicationUserRowMapper).ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<IdentityRole> GetUserRolesByUsername(string username)
        {
            try
            {
                var command = Entlib.GetStoredProcCommand("sec.GetUserRolesByUsername");
                Entlib.AddInParameter(command, "username", DbType.String, username);
                return Entlib.ExecuteCommandAccessor(command, IdentityRoleRowMapper).ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}