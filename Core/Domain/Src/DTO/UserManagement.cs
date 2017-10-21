using System.Collections.Generic;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class UserManagement
    {
        public string Id { get; set; }
        public string DisplayName { get; set; }
        public string RoleId { get; set; }
        public string RoleName { get; set; }
        public string CreateDate { get; set; }
        public UserStatus Status { get; set; }
        public string StatusDescription => Status.GetDescription();
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string ConfirmPasswod { get; set; }

        public string BranchTitle { get; set; }

        public int BranchId { get; set; }
        public string BranchCode { get; set; }

        public List<string> RolesCodeList { get; set; }

        public string NationalId { get; set; }


    }
}