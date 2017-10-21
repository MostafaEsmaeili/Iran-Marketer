using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    /// <summary>
    /// هزینه آبونمان نرم افزار 
    /// </summary>
    public class SoftwareAndAccessCostSetting : AbstractSetting
    {
        [Description("هزینه نرم افزار")]
        public decimal SoftwareCost { get; set; }
        [Description("مالیات")]
        public decimal SoftwareCostTax { get; set; }
        [Description("عوارض")]
        public decimal SoftwareCostToll { get; set; }
        [Description("از تاریخ")]
        public DateTime FromDate { get; set; }
        [Description("از تاریخ")]
        public DateTime ToDate { get; set; }

        public SoftwareAndAccessCostOnNetValue SoftwareAndAccessCostOnNetValue1 { get; set; }
        public SoftwareAndAccessCostOnNetValue SoftwareAndAccessCostOnNetValue2 { get; set; }
        public SoftwareAndAccessCostOnNetValue SoftwareAndAccessCostOnNetValue3 { get; set; }


        [Description("مبلغ متغیر بابت صدور و ابطال")]
        public decimal SoftwareCostOnSubscriptionAndRedemption { get; set; }
        [Description("مبلغ متغیر بابت مشتری فعال")]
        public decimal SoftwareCostOnSherHolders { get; set; }

    }

    public class SoftwareAndAccessCostOnNetValue
    {
        public double Percent { get; set; }
        public decimal? MaxNetValue { get; set; }

    }
}
