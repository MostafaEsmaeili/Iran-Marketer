using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum JobTitle
    {
        [Description("نامشخص")]
        Unknown = 0,
        [Description("کارمند")]
        Employee = 1,
        [Description("کارگر")]
        Worker = 2,
        [Description("آزاد")]
        SelfEmployed = 3,
        [Description("بازنشسته")]
        Retired = 4,
        [Description("خانه دار")]
        HouseWife = 5
    }
}
