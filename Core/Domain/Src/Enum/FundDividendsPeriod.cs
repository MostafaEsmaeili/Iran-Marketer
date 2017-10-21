using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum FundDividendsPeriod
    {
        [Description("ماهانه")] Monthly = 1,
        [Description("سه ماهه")] ThreeMonthly = 2,
        [Description("شش ماهه")] SixMonthly = 3,
        [Description("سالانه")] Yearly = 4,
            [Description("ندارد")] NoDividend = 5,

    }
}