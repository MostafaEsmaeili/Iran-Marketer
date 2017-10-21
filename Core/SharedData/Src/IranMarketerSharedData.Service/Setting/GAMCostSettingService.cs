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
    public class GAMCostSettingService : BaseSettingService
    {
        private ISettingService SettingService => CoreContainer.Container.Resolve<ISettingService>();
        private CustomLogger Logger => new CustomLogger(GetType().FullName);


        public GAMCostSetting GetGAMCostSetting(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSetting<GAMCostSetting>(SettingType.GAMCostSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public GAMCostSetting GetGAMCostSettingByDate(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSettingByDate<GAMCostSetting>(SettingType.GAMCostSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void SaveGAMCostSetting(GAMCostSetting setting, string createdBy, DateTime date)
        {
            try
            {
                SettingService.SaveSetting(setting, SettingType.GAMCostSetting, createdBy, date);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }


        public List<GAMCostSetting> GetHistoricalGAMCostSettings(DateTime fromDate, DateTime toDate)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<GAMCostSetting>(SettingType.GAMCostSetting, fromDate,
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
