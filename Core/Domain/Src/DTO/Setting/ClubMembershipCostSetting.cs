using System;
using System.ComponentModel;
using IranMarketer.Domain.Entity;

namespace IranMarketer.Domain.DTO
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
        public string FromDate { get; set; }
        [Description("از تاریخ")]
        public string ToDate { get; set; }
    }
}