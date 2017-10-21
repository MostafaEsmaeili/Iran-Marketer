using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum RequestTransactionType
    {
        [Description("پذیره نویسی")]
        IPO = 1,
        [Description("صدور")]
        Subscription = 2,
        [Description("ابطال")]
        Redemption = 3,
        [Description("انتقال")]
        Transfer = 4
    }
}
