using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum MilitaryService
    {
        [Description("UnKnown")] [DescriptionFa("نامشخص")] UnKnown = 0,

        [Description("Completed")] [DescriptionFa("انجام شده")] Completed = 1,
        [Description("Exempted")] [DescriptionFa("معاف دائم")] Exempted = 2,
        [Description("EducationalExemption")] [DescriptionFa("معاف تحصیلی")] EducationalExemption = 3,
        [Description("Ongoing")] [DescriptionFa("در حال انجام")] Ongoing = 4,
        [Description("NotServedYet")] [DescriptionFa("مشمول")] NotServedYet = 5

    }
}