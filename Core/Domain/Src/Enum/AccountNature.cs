using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum AccountNature
    {
        [Description("بدهکار")]
        Debit = 1,
        [Description("بستانکار")]
        Credit = 2,
        [Description("بد/بس")]
        Both = 3,
        [Description("طبق طبقه")]
        BaseOnClass = 4
    }
}
