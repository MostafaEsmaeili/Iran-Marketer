using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.UserManagement.Service
{
    public class UserManagementService : Service<Domain.DTO.UserManagement,IUserManagementRepository,string> , IUserManagementService
    {
        public List<Domain.DTO.UserManagement> GetUserManagements()
        {
            try
            {
                return Dao.GetUserManagements();
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
                return Dao.GetUserByUserName(userName);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
