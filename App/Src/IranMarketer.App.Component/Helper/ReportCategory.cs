using System.ComponentModel;

namespace IranMarketer.App.Component.Helper
{
    public enum ReportCategory
    {
        [Description("« رسيد پذیره نویسی/درخواست  صدور واحد سرمايه گذاري »")]
        SubscriptionReceipt=1,
        [Description("« رسيد درخواست ابطال واحد سرمايه گذاري »")]
        RedemptionReceipt = 2,
        [Description("«اعلامیه ابطال واحد سرمایه گذاری»")]
        RedemptionStatement = 3,
        [Description("«اعلامیه صدور واحد سرمایه گذاری»")]
        SubscriptionStatement = 4
    }
}