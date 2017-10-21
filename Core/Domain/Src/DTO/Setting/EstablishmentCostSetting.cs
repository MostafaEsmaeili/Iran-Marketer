using System;
using System.ComponentModel;
using IranMarketer.Domain.Entity;

namespace IranMarketer.Domain.DTO
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
            public string FromDate { get; set; }
            [Description("از تاریخ")]
            public string ToDate { get; set; }
        }
   }