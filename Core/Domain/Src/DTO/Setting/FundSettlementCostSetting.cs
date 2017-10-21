using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Entity;

namespace IranMarketer.Domain.DTO
{
    /// <summary>
    /// تصفیه
    /// </summary>
    public class FundSettlementCostSetting : AbstractSetting
    {
        [Description("ضریب سالانه کارمزد تصفیه")]
        public decimal ClearingAndSettlementWageFactor { get; set; }

        [Description("مقدار عددی کارمزد تصفیه")]
        public decimal ClearingAndSettlementWageAmount { get; set; }

        [Description("از تاریخ")]
        public string FromDate { get; set; }
        [Description("از تاریخ")]
        public string ToDate { get; set; }

        [Description("در نظر گرفتن مالیات و عوارض برای تصفیه")]
        public bool ConsiderTaxAndToll { get; set; }

        [Description("سال مورد نظر برای محاسبه")]
        public int YearForCalclualtionClearing { get; set; }

    }
}
