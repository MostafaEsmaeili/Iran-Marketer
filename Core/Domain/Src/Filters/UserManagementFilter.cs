using System.Collections.Generic;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class UserManagementAddFilter : ReportFilter
    {
        public new string UserName { get; set; }
        public string DisplayName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }

    }

    public class UserManagementEditFilter : ReportFilter
    {
        public string UserName { get; set; }

    }

    public class UserManagementUpdateFilter : ReportFilter
    {
        public string UserName { get; set; }
        public string DisplayName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public UserStatus Status { get; set; }
        public List<string> RolesCodeList { get; set; }
        public string BranchCode { get; set; }



    }
    public class AddRoleFilter : ReportFilter
    {
        public string RoleName { get; set; }

    }
    public class AdminResetPassword : ReportFilter
    {
        public string NewPassword { get; set; }
    }
}