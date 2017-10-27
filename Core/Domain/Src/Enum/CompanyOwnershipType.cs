using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum CompanyOwnershipType
    {
        [Description("نا مشخص")]
        UnKown = 0,
        [Description("شرکت خصوصی")]
        PrivatelyHeld = 1,
        [Description("دولتی")]
        Govermental = 2,
        [Description("غیر اتفاعی-مردم نهاد- خیریه")]
        NoeProfitNgoCharity = 3

    }
}