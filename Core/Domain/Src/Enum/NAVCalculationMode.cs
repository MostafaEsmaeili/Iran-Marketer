using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum NAVCalculationMode
    {
        [Description("معمولی")]
        Regular = 1,
        [Description("تقسیم سود")]
        Dividend = 2,
    }
}
