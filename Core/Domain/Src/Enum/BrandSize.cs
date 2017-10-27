using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum BrandSize
    {
        [Description("زیر ده نفر")]
        UnderTen=0,
        [Description("بین ده تا پنجاه نفر")]
        Between11To50 = 1,
        [Description("بین پنجاه تا دویست نفر")]
        Between51To200 = 2,
        [Description("بین دویست تا پانصد نفر")]
        Between200To500 = 3,
        [Description("بین پانصد تا هزار نفر")]
        Between500To1000 = 5,
        [Description("بالای هزار نفر")]
        OnehundredAndAbove = 6
    }
}