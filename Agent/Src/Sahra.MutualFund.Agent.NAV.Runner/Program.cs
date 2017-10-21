using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Sahra.MutualFund.Agent.NAV.Component;
using Sahra.MutualFund.Common.Utility;
using Sahra.MutualFund.Domain.Entity;

namespace Sahra.MutualFund.Agent.NAV.Runner
{
    class Program
    {
        static void Main(string[] args)
        {
            var agentStarter = new AgentStarter();
            agentStarter.Start();

            var date = new DateTime(2017, 6, 27);




            //var calculationJob = new DailyCalculationJob();
            //calculationJob.Calculate(date);

            //var redemptionRequestProcessJob = new RedemptionRequestProcessJob();
            //redemptionRequestProcessJob.Process(date);
            //var subscriptionRequestProcessJob = new SubscriptionRequestProcessJob();
            //subscriptionRequestProcessJob.Process(date);
        }
    }
}
