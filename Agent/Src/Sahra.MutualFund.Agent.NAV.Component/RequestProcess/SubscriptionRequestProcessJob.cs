using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Repository.IoC;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.RequestManagement.API;

namespace Sahra.MutualFund.Agent.NAV.Component
{
    public class SubscriptionRequestProcessJob
    {
        public SubscriptionRequestProcessProvider.SubscrptionFinalProcess Process(DateTime date, CreatorUserItems creatorUserItems)
        {
            try
            {
                var subscriptionRequestProcessProvider = new SubscriptionRequestProcessProvider
                {
                    CreatorUserItems = creatorUserItems,
                    Date = date
                };

                var res = subscriptionRequestProcessProvider.Process();
                return res;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
