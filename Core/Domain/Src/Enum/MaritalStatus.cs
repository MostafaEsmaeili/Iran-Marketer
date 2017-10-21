using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum MaritalStatus
    {
        [Description("UnKnown")]
        [DescriptionFa("نامشخص")]
        UnKnown =0,
        [Description("Single")]
        [DescriptionFa("مجرد")]
        Single =1,
        [Description("Married")]
        [DescriptionFa("متاهل")]
        Married =2
    }
}