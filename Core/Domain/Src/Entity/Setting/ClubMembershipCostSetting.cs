using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    public class ClubMembershipCostSetting : AbstractSetting
    {
        [Description("هزینه عضویت در کانون ها")]
        public decimal ClubMembershipCost { get; set; }
        [Description("مالیات")]
        public decimal ClubMembershipCostTax { get; set; }
        [Description("عوارض")]
        public decimal ClubMembershipCostToll { get; set; }
        [Description("از تاریخ")]
        public DateTime? FromDate { get; set; }
        [Description("از تاریخ")]
        public DateTime? ToDate { get; set; }
    }
}
