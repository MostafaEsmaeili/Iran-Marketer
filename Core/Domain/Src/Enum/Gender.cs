using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum Gender
    {
        [Description("نامشخص")]
        Unknown = 0,
        [Description("مرد")]
        Male = 1,
        [Description("زن")]
        Female = 2,
    }
}
