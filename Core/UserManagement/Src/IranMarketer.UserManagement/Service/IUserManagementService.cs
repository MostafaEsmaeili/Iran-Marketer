using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.UserManagement.Service
{
    public interface IUserManagementService : IService<Domain.DTO.UserManagement, string>
    {
        List<Domain.DTO.UserManagement> GetUserManagements();

        Domain.DTO.UserManagement GetUserByUserName(string userName);
    }
}
