using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum PageType
    {
        [Description("")]
        UnKnown = 0,
        [Description("تنظیمات پایه")]
        GeneralFundSetting = 1,
        [Description("افزودن کاربر")]
        AddUser = 2,
        [Description("ویرایش کاربر")]
        UpdateUser = 3,
        [Description("لیست کاربران")]
        AllUsers = 4,
        [Description("پروفایل")]
        Profile = 5,
        [Description("شعبه")]
        Branch = 6,
        [Description("تنظیمات")]
        Setting = 7,
        [Description("مشتریان")]
        Customer = 8,
        [Description("تنظیمات سطح دسترسی")]
        ServiceAccess = 9,
        [Description("درخواست صدور")]
        SubscriptionRequest = 10,
        [Description("درخواست ابطال")]
        RedemptionRequest = 11,
        [Description("انتقال وجه بین بانکی")]
        BankTransfer = 12,
        [Description("دریافت سود بانکی")]
        BankDepositProfitReceive = 13,
        [Description("سند دستی")]
        ManualVoucher = 14,
    }
}