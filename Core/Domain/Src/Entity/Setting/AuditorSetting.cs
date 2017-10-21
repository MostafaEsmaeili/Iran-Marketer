using System;
using System.Collections.Generic;
using System.ComponentModel;
using IranMarketer.Domain.DTO;

namespace IranMarketer.Domain.Entity
{
    public class AuditorSetting :AbstractSetting
    {
        [Description("حسابرس")]
        public SimpleParty Auditor { get; set; }

        [Description("دوره حسابرسی از تاریخ")]
        public DateTime AuditorFromDate { get; set; }
        [Description("دوره حسابرسی تا تاریخ")]
        public DateTime AuditorToDate { get; set; }
        [Description("حق الزحمه حسابرسی")]
        public decimal AuditorFee { get; set; }
        [Description("مقدار مالیات بر ارزش افزوده حسابرس")]
        public decimal AuditorFeeTax { get; set; }

        [Description("مقدار عوارض حسابرس")]
        public decimal AuditorFeeToll { get; set; }

        
    }
}