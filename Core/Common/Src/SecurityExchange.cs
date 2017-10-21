using System.ComponentModel;

namespace IranMarketer.Common
{
    public enum SecurityExchange
    {
        [Description("بورس")]
        TSE = 1,
        [Description("فرابورس")]
        IFB = 2,
        [Description("بورس انرژی")]
        IRENEX = 3,
        [Description("بورس کالا")]
        IME = 4
    }
}
