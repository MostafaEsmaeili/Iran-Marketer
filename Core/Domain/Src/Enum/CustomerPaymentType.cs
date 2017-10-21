using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum CustomerPaymentType
    {
        [Description("بابت تتمه صدور واحدها")]
        RemainForSubscription = 1,
        [Description("بابت واحدهای ابطالی")]
        RemainForRedemption = 2,
        [Description("بابت سود تقسیمی واحدهای عادی")]
        PayableDividendForRegularUnits = 3,
        [Description("بابت سود تقسیمی واحدهای ممتاز")]
        PayableDividendForSpecialUnits = 4
    }
}
