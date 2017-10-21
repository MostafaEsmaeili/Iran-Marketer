using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum AccountCategoryEnum
    {
        [Description("دارایی های جاری")]
        CurrentAssets = 1,
        [Description("بدهی های جاری")]
        CurrentDebts = 2,
        [Description("خالص دارایی ها")]
        NetAssets = 3,
        [Description("درآمد")]
        Incomes = 4,
        [Description("هزینه")]
        Costs = 5,
        [Description("حساب های آماری")]
        Statiscals = 6
    }
}
