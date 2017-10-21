using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
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
        public DateTime FromDate { get; set; }
        [Description("از تاریخ")]
        public DateTime ToDate { get; set; }
    }
}
