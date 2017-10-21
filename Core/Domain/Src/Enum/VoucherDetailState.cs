using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum VoucherDetailState
    {
        [Description("غیر قابل مشاهده")]
        Invisible = 1,
        [Description("تایید شده")]
        Confirm = 2,
        [Description("حذف شده")]
        Deleted = 3
    }
}
