using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    /// <summary>
    /// درخواست
    /// </summary>
    public class RequestFeeSetting : AbstractSetting
    {
        [Description("کارمزد ثابت صدور")]
        public decimal SubscriptionFixedWage { get; set; }
        [Description("کارمزد ثابت ابطال")]
        public decimal RedemptionFixedWage { get; set; }

        [Description("ضریب کارمزد متغیر ابطال")]
        public decimal RedemptionVariableWageFactor { get; set; }
        [Description("سقف کارمزد متغیر ابطال")]
        public decimal MaxOfRedemptionVariableWageFactor { get; set; }

        [Description("ضریب کارمزد متغیر صدور")]
        public decimal SubscriptionVariableWageFactor { get; set; }
        [Description("سقف کارمزد متغیر صدور")]
        public decimal MaxOfubscriptionVariableWageFactor { get; set; }

        public RedemptionPenalty Penalty1 { get; set; }
        public RedemptionPenalty Penalty2 { get; set; }
        public RedemptionPenalty Penalty3 { get; set; }
        public RedemptionPenalty Penalty4 { get; set; }
        public RedemptionPenalty Penalty5 { get; set; }

        public string RequestVaidateFromTime { get; set; }
        public string RequestVaidateToTime { get; set; }

        //public string RequestVaidateFromTimeTitle => RequestVaidateFromTime != null
        //    ? new DateTime().Add(RequestVaidateFromTime.Value)
        //        .ToString("hh:mm tt", CultureInfo.CreateSpecificCulture("fa-IR"))
        //    : null;
    
        //public string RequestVaidateToTimeTitle => RequestVaidateToTime != null
        //    ? new DateTime().Add(RequestVaidateToTime.Value)
        //        .ToString("hh:mm tt", CultureInfo.CreateSpecificCulture("fa-IR"))
        //    : null;
    }

    public class RedemptionPenalty
    {
        public double Percent { get; set; }
        public int? MaxDate { get; set; }

    }
}
