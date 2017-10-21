using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using Sahra.MutualFund.Calculation.API;

namespace Sahra.MutualFund.Agent.NAV.Component
{
    public class FundItemCalulation
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public void Calculation(DateTime date)
        {
            try
            {
                var settlementCost = new FundDailySettlementCostCalculation(date);
                var fundDailyCostCalculation = new FundDailyCostCalculation(date);
                var bankDepositProfitCalculation = new BankDepositProfitCalculation(date);
              
                settlementCost.Caclulate();
                fundDailyCostCalculation.Caclulate();
                bankDepositProfitCalculation.Caclulate();

            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }

        }
    }
}
