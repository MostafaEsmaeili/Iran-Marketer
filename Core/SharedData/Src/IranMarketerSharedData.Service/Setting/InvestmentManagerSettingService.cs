using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using Sahra.MutualFund.Common;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.Domain.Enum;
using Sahra.MutualFund.SharedData.Interface;

namespace Sahra.MutualFund.SharedData.Service
{
    public class InvestmentManagerSettingService: BaseSettingService
    {
        private ISettingService SettingService => CoreContainer.Container.Resolve<ISettingService>();
        private CustomLogger Logger => new CustomLogger(GetType().FullName);


        public InvestmentManagerSetting GetInvestmentManagerSetting(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSetting<InvestmentManagerSetting>(SettingType.InvestmentManagerSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public InvestmentManagerSetting GetInvestmentManagerSettingByDate(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSettingByDate<InvestmentManagerSetting>(SettingType.InvestmentManagerSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void SaveInvestmentManagerSetting(InvestmentManagerSetting setting, string createdBy, DateTime date)
        {
            try
            {
                SettingService.SaveSetting(setting, SettingType.InvestmentManagerSetting, createdBy, date);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
        public List<InvestmentManagerSetting> GetHistoricalInvestmentManagerSettings(DateTime fromDate, DateTime toDate)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<InvestmentManagerSetting>(SettingType.InvestmentManagerSetting, fromDate,
                        toDate);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
    }
}
