using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum OrgenizationType
    {
        [Description("شرکت سرمایه گذاری")] InvestmentCompany = 1,

        [Description("مشاور سرمایه گذاری")] Advisory = 2,

        [Description("سبدگردان")] PortfolioManagementCo = 3,

        [Description("تامین سرمایه")] InvestmentBank = 4,

        [Description("بانک ")] Bank = 5,

        [Description("موسسات مالی و اعتباری")] CreditInstitute = 6,

        [Description("کارگزاری")] Brokerage = 7,

        [Description("موسسه حسابرسی")] AccountingFirms = 8,
        [Description("نهادهای دولتی")] GovernmentalOrganization=9,
        [Description("سهامی خاص")] PrivateCompany=10,
        [Description("دیگر")] Other=0
    }
}