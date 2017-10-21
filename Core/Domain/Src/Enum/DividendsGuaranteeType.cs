using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum DividendsGuaranteeType
    {
        [Description("ندارد")]
        NoDividend = 1,
        [Description("تضمین سود")]
        Guarantee = 2,
        [Description("پیش بینی سود")]
        Predict = 3
    }
}