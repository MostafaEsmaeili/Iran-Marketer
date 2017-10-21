using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum CashFlowTransactionType
    {
        [Description("دریافت")]
        Receive = 1,
        [Description("پرداخت")]
        Payment = 2,
        [Description("انتقال")]
        Transfer = 3,
    }
}
