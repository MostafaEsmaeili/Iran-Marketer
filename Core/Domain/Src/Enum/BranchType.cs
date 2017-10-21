using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum BranchType
    {
        [Description("کارگزاری")]
        Broker = 1,
        [Description("بانک")]
        Bank = 2,
        [Description("مجازی")]
        Virtual = 4,
        [Description("تامین سرمایه")]
        InvestmentBank = 3,
    }
}
