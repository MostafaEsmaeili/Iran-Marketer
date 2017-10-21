using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum VoucherMasterState
    {

        [Description("پیش نویس")]
        Draft = 1,
        [Description("غیر قابل مشاهده")]
        Invisible = 2,
        [Description("موقت")]
        Temp = 3,
        [Description("قطعی")]
        Final = 4,
        [Description("حذف شده")]
        Deleted = 5,
        [Description("بررسی")]
        Checking = 6
    }
}
