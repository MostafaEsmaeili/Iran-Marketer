using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Common;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.SharedData.Interface;

namespace IranMarketer.SharedData.Service
{
    public class FundSettlementCostSettingService : BaseSettingService
    {
        private ISettingService SettingService => CoreContainer.Container.Resolve<ISettingService>();
        private CustomLogger Logger => new CustomLogger(GetType().FullName);


        public FundSettlementCostSetting GetFundSettlementCostSetting(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSetting<FundSettlementCostSetting>(SettingType.FundSettlementCostSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public FundSettlementCostSetting GetFundSettlementCostSettingByDate(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSettingByDate<FundSettlementCostSetting>(SettingType.FundSettlementCostSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }



        public void SaveFundSettlementCostSetting(FundSettlementCostSetting setting, string createdBy, DateTime date)
        {
            try
            {
                SettingService.SaveSetting(setting, SettingType.FundSettlementCostSetting, createdBy, date);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public List<FundSettlementCostSetting> GetHistoricalFundSettlementCostSettings(DateTime fromDate, DateTime toDate)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<FundSettlementCostSetting>(SettingType.FundSettlementCostSetting, fromDate,
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
