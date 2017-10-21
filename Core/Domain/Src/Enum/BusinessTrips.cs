using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum BusinessTrips
    {
        [Description("OnKnown")]
        [DescriptionFa("نا مشخص")]
        OnKnown = 0,

        [Description("Yes As Needed")]
        [DescriptionFa("بله در صورت نیاز")]
        YesAsNeeded = 1,

        [Description("OnlyOccasionally")]
        [DescriptionFa("تنها در موارد خاص")]
        OnlyOccasionally = 2,

        [Description("NotAtAll")]
        [DescriptionFa("به هیچ وجه")]
        NotAtAll = 3,

    }
}