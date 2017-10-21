using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using Sahra.MutualFund.SharedData.Facade;

namespace Sahra.MutualFund.Agent.MarkertData.Component.Job
{
    public abstract class MarketDataJob
    {
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        public SahraMarketDataProvider SahraMarketDataProvider = new SahraMarketDataProvider();
    }
}
