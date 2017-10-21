using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum NAVStatus
    {
        [Description("تایید شده")]
        Confirmed = 1,
        [Description("تایید نشده")]
        NotConfirmed = 2,
        [Description("حذف شده")]
        Deleted = 3
    }
}
