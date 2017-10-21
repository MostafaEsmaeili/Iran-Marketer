using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Repository.IoC;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.RequestManagement.API;
using Sahra.MutualFund.SharedData.Service;

namespace Sahra.MutualFund.Agent.NAV.Component
{
    public class RedemptionRequestProcessJob
    {
        public RedemptionRequestProcessProvider.RedemptionFinalProcess Process(DateTime date, CreatorUserItems creatorUserItems)
        {
            try
            {
                var redemptionRequestProcessProvider = new RedemptionRequestProcessProvider
                {
                    CreatorUserItems = creatorUserItems,
                    Date = date
                };
                var res = redemptionRequestProcessProvider.Process();
                return res;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
