using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum  ExpectedSalary
    {
        [Description("OnKnown")]
        [DescriptionFa("نا مشخص")]
        OnKnown = 0,


        [Description("1-2 Million Tomans")]
        [DescriptionFa("یک تا دو میلیون تومان")]
        OneTwoMilion = 1,


        [Description("2-3 Million Tomans")]
        [DescriptionFa("دو تا سه میلیون تومان")]
        TwoThreeMilion = 2,

        [Description("3-4 Million Tomans")]
        [DescriptionFa("سه تا چهار میلیون تومان")]
        ThreeFourMilions = 3,

        [Description("4-6 Million Tomans")]
        [DescriptionFa("چهار تا شش میلیون تومان")]
        FourSixMilion = 4,

        [Description("6-8 Million Tomans")]
        [DescriptionFa("شش تا هشت میلیون تومان")]
        SixEight = 5,

        [Description("6-8 Million Tomans")]
        [DescriptionFa("هشت تا ده میلیون تومان")]
        EightTwoelveMilion = 6,

        [Description("Ten Or Above")]
        [DescriptionFa("ده میلیون و بالاتر")]
        TenOrAbove = 7,
    }
}