using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum RequestTransactionState
    {
        [Description("پیش نویس")]
        Draft = 1,
        [Description("در انتظار")]
        Wating = 2,
        [Description("تایید")]
        Confirm = 3,
        [Description("رد سیستم")]
        RejectedBySystem = 4,
        [Description("رد مدیر")]
        RejectedByManager = 5,
        [Description("لغو")]
        Cancel = 7,
        [Description("تایید گواهی")]
        EvidencConfirm = 8
    }
}
