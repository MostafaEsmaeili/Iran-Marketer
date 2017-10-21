using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum UserRoleType
    {
        [Description("مدیر")]
        Admin = 1,
        [Description("کاربر شعبه")]
        BranchManager = 2,
        [Description("متولی")]
        Custodian = 3,
        [Description("حسابرس")]
        Auditor = 4
    }
}
