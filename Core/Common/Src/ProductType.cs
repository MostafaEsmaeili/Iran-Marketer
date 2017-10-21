using System.ComponentModel;

namespace IranMarketer.Common
{
    public enum ProductType
    {
        [Description("سهام")]
        Equity = 1,
        [Description("صندوق")]
        Fund = 2,
        [Description("اوراق")]
        Bond = 3,
        [Description("اختیار")]
        Option = 4,
        [Description("شاخص")]
        Index = 5,
        [Description("سلف")]
        Forward = 6,
        [Description("ETF")]
        ETF = 7
        //[Description("ارز")]
        //Currency = 0006,
        //[Description("کوپن")]
        //Coupon = 0007,
        //[Description("حق تقدم")]
        //Right = 0008,
        //[Description("Property")]
        //Property = 0009,
        //[Description("سایر")]
        //Other = 0010,
        //[Description("0011")]
        //Warrant = 0011,
        //[Description("نقدی")]
        //Cash = 0012,
        //[Description("آتی")]
        //Furures = 0013,
        //[Description("نامشخص")]
        //NonUnitised = 0016
    }
}
