using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using Sahra.MutualFund.Calculation.API;

namespace Sahra.MutualFund.Agent.NAV.Component
{
    public class BoardMembersCalcualtion
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
    
        public void Calculation(DateTime date)
        {
            try
            {
                var managementDailyCostCaclulation = new ManagementDailyCostCaclulation(date);
                var auditorDailyCostCalculation = new AuditorDailyCostCalculation(date);
                var custodianDailyCostCaculation = new CustodianDailyCostCaculation(date);
                var liquidityGuaranteeDailyCostCalculation = new LiquidityGuaranteeDailyCostCalculation(date);
                var profitGuaranteeDailyCostCalculation = new ProfitGuaranteeDailyCostCalculation(date);

                managementDailyCostCaclulation.Caclulate();
                auditorDailyCostCalculation.Caclulate();
                custodianDailyCostCaculation.Caclulate();
                liquidityGuaranteeDailyCostCalculation.Caclulate();
                profitGuaranteeDailyCostCalculation.Caclulate();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw;
            }

        }
    }
}
