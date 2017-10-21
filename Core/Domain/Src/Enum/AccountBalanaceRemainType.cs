using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum AccountBalanaceRemainType
    {
        [Description("همه")]
        All = 1,
        [Description("بدهکار")]
        Debit = 2,
        [Description("بستانکار")]
        Credit = 3,
        [Description("مانده دار")]
        OnlyWithRemain = 4
    }
}
