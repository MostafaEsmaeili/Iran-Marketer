using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.UserManagement.Service
{
    public class UserManagementRepository : Repository<Domain.DTO.UserManagement, string>, IUserManagementRepository
    {
        public UserManagementRepository(IDbFactory factory) : base(factory)
        {
        }

        public List<Domain.DTO.UserManagement> GetUserManagements()
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = null
                };
                command.SqlCommand = "sec.GetUserManagements";
                return GetAll(command,new UserManagementRowMapper()).ToList();
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public Domain.DTO.UserManagement GetUserByUserName(string userName)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("userName", userName, DbType.String);
                command.SqlCommand = "sec.GetUserByUserName";
                return Get(command, new UserManagementRowMapper());
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
