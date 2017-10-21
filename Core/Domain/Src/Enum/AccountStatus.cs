using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum AccountStatus
    {
        [Description("فعال")]
        Active = 1,
        [Description("غیر فعال")]
        InActive = 2,
        [Description("غیر فعال")]
        Unknown = 0,
    }
}
