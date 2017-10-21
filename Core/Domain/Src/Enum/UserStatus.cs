using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace IranMarketer.Domain.Enum
{
    public enum UserStatus
    {
        [Description("فعال")]
        [Display(Name = "فعال")]

        Active = 1,
        [Description("غیر فعال")]
        [Display(Name = "غیر فعال")]

        Inactive = 0
    }
}