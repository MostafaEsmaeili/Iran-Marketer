using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum EducationDegree
    {
        [Description("نامشخص")]
        Unknown = 0,
        [Description("دیپلم")]
        Diploma = 4,
        [Description("زیر دیپلم")]
        UnderDiploma = 5,
        [Description("کارشناسی")]
        BachelorDegree = 1,
        [Description("کارشناسی ارشد")]
        MasterDegree = 2,
        [Description("دکتری")]
        PhD = 3
    }
}
