using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Repository;

namespace IranMarketer.UserManagement.Service
{
    public interface IUserManagementRepository : IRepository<Domain.DTO.UserManagement, string>
    {
        List<Domain.DTO.UserManagement> GetUserManagements();
        Domain.DTO.UserManagement GetUserByUserName(string userName);
    }
}
