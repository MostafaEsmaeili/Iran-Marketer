using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum PersonalityRole
    {
        [Description("مشتری")]
        Customer = 100,
        [Description("مدیر")]
        Manager = 101,
        [Description("بازارگردان")]
        MarketMakar = 102,
        [Description("متولی")]
        Custodian = 103,
        [Description("حسابرس")]
        Auditor = 104,
        [Description("ضامن")]
        Guarantor = 106,
        [Description("ضامن سودآوری")]
        ProfitGuarantor = 107,
        [Description("ضامن نقدشوندگی")]
        LiquidityGuarantor = 108,
        [Description("مدیر ثبت")]
        RegisterManager = 109,
        [Description("مدیر سرمایه گذاری")]
        InvestmentManager = 110
    }
}
