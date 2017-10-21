using System;
using System.ComponentModel;
using IranMarketer.Domain.Entity;

namespace IranMarketer.Domain.DTO
{
    public class SoftwareAndAccessCostSetting : AbstractSetting
    {
        [Description("هزینه نرم افزار")]
        public decimal SoftwareCost { get; set; }
        [Description("مالیات")]
        public decimal SoftwareCostTax { get; set; }
        [Description("عوارض")]
        public decimal SoftwareCostToll { get; set; }
        [Description("از تاریخ")]
        public string FromDate { get; set; }
        [Description("از تاریخ")]
        public string ToDate { get; set; }
        public SoftwareAndAccessCostOnNetValue SoftwareAndAccessCostOnNetValue1 { get; set; }
        public SoftwareAndAccessCostOnNetValue SoftwareAndAccessCostOnNetValue2 { get; set; }
        public SoftwareAndAccessCostOnNetValue SoftwareAndAccessCostOnNetValue3 { get; set; }


        [Description("مبلغ متغیر بابت صدور و ابطال")]
        public decimal SoftwareCostOnSubscriptionAndRedemption { get; set; }
        [Description("مبلغ متغیر بابت مشتری فعال")]
        public decimal SoftwareCostOnSherHolders { get; set; }
    }
}