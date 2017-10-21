using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum SecurityTransactionType
    {
        [Description("نامشخص")]
        Unknown = 0,
        [Description("خرید")]
        Buy = 1,
        [Description("فروش")]
        Sell = 2,
        [Description("ایجاد")]
        InitializeAsset = 3,
        [Description("تبدیل حق تقدم")]//تبدیل حق تقدم به سهام برای حق تقدم
        RightExercise = 4,
        [Description("افزایش سرمایه")]
        RightIssue = 5,
        [Description("افزایش سرمایه خروج سهم")]
        RightIssueForStock = 6,
        [Description("افزایش سرمایه سهم جایزه")]
        CapitalIncreaseBonus = 7,
        [Description("تقسیم سود")]
        Dividend = 8,
        [Description("خروج سهم در تبدیل تقدم")]//تبدیل حق تقدم به سهام برای سهام
        RightExerciseForStock = 9,
        [Description("ALL")]
        All = 1000
    }
}
