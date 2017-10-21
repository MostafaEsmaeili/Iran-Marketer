using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    public class EstablishmentCostSetting : AbstractSetting
    {
        [Description("هزینه تاسیس")]
        public decimal EstablishmentCost { get; set; }
        [Description("مالیات")]
        public decimal EstablishmentCostTax { get; set; }
        [Description("عوارض")]
        public decimal EstablishmentCostToll { get; set; }
        [Description("از تاریخ")]
        public DateTime FromDate { get; set; }
        [Description("از تاریخ")]
        public DateTime ToDate { get; set; }
    }
}
