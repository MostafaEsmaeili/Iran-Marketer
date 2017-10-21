using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum JobPosition
    {
        [Description("نامشخص")]
        Unknown = 0,
        [Description("کارشناس")]
        Expert = 1,
        [Description("کارشناس ارشد")]
        MasterExpert = 2,
        [Description("مدیر")]
        Manager = 3,
        [Description("مدیر عامل")]
        CEO = 4,
        [Description("عضو هیئت مدیره")]
        MemberOfTheBoard = 5
    }
}
