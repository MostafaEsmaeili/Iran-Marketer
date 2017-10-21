using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum AdjustedPriceType
    {
        [Description("قیمت کارشناسی")]
        Numeric = 1,
        [Description("درصدی")]
        Percentage = 2
    }
}
