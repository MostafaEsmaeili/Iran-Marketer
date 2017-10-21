using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum CalculationState
    {
        [Description("مانده دار")]
        HasRemain = 1,
        [Description("خارج شده")]
        ZeroRemain = 2
    }
}
