using System;
using System.ComponentModel;
using IranMarketer.Domain.Entity;

namespace IranMarketer.Domain.DTO
{
    public class GAMCostSetting : AbstractSetting
    {
        [Description("هزینه برگزاری مجامع")]
        public decimal GAMCost { get; set; }
        [Description("مالیات")]
        public decimal GAMCostTax { get; set; }
        [Description("عوارض")]
        public decimal GAMCostToll { get; set; }
        [Description("از تاریخ")]
        public string FromDate { get; set; }
        [Description("از تاریخ")]
        public string ToDate { get; set; }
    }
}