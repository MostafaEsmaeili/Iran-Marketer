using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum FundType
    {
        [Description("سرمایه گذاری در سهام")]
        Equity= 1,
        [Description("درآمدثابت")]
        FixedIncome = 2,
        [Description("مختلط")]
        Balanced = 3,
        [Description("بازارگردانی")]
        Markenting = 4

    }
}