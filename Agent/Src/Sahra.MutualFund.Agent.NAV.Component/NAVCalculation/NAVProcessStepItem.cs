using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.RequestManagement.API;

namespace Sahra.MutualFund.Agent.NAV.Component
{
    public class NAVProcessStepItem
    {

        public static SubscriptionRequestProcessProvider.SubscrptionFinalProcess SubscrptionFinalProcess { get; set; }
        public static RedemptionRequestProcessProvider.RedemptionFinalProcess RedemptionFinalProcess { get; set; }
        public static Voucher DailyVoucher { get; set; }


    }
}
