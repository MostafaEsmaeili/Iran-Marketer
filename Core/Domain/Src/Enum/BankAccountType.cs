using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum BankAccountType
    {
        [Description("سپرده کوتاه مدت")]
        ShortTermDepositAccount = 1,
        [Description("سپرده بلند مدت")]
        LongTermDepositAccount = 2,
        [Description("حساب جاری")]
        CurrentAccount = 3,
        [Description("حساب قرض الحسنه")]
        DebitAccount = 4

    }
}
