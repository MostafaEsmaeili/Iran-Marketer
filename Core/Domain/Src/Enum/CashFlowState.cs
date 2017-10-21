using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum CashFlowState
    {
        [Description("پیش نویس")]
        Draft = 1,
        [Description("موقت")]
        Temp = 2,
        [Description("قطعی")]
        Final = 3,
        [Description("حذف شده")]
        Deleted = 4
    }
}
