using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Sahra.MutualFund.Agent.MarkertData.Component;

namespace Sahra.MutualFund.Agent.MarkertData.Runner
{
    class Program
    {
        static void Main(string[] args)
        {
            var agentStarter = new AgentStarter();
            agentStarter.Start();

            //var productJob = new ProductJob();
            //productJob.UpdateProducts(new DateTime(2013, 1, 1));


            //var closeJob = new ClosePriceJob();
            //closeJob.UpdatePrices(new DateTime(2017, 8, 13));

            var accuredInterestJob = new AccuredInterestJob();
            accuredInterestJob.UpdateAccuredInterests();
        }
    }
}
