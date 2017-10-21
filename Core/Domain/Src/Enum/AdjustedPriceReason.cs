using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum AdjustedPriceReason
    {
        [Description("مجمع فوق العاده")]
        SpecialCorporateEvent = 1,
        [Description("مجمع عادی")]
        NormalCorporateEvent = 2,
        [Description("صف خرید و فروش")]
        TradeQueue = 3,
        [Description("اخبار منتشره")]
        News = 4,
        [Description("تصمیمات شرکت")]
        BoardMemberDecison = 5,
        [Description("سایر")]
        Other = 6

    }
}
