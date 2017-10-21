using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum Relocate
    {
        [Description("OnKnown")]
        [DescriptionFa("نا مشخص")]
        OnKnown = 0,
        [Description("No")]
        [DescriptionFa("خیر")]
        No,
        [Description("Yes")]
        [DescriptionFa("بله")]
        Yes
    }
}