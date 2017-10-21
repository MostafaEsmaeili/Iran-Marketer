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
    public class TseEquityFeeSettingService : BaseSettingService
    {
        private ISettingService SettingService => CoreContainer.Container.Resolve<ISettingService>();
        private CustomLogger Logger => new CustomLogger(GetType().FullName);


        public TseEquityFeeSetting GetTseEquityFeeSetting(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSetting<TseEquityFeeSetting>(SettingType.TseEquityFeeSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public TseEquityFeeSetting GetTseEquityFeeSettingByDate(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSettingByDate<TseEquityFeeSetting>(SettingType.TseEquityFeeSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void SaveTseEquityFeeSetting(TseEquityFeeSetting setting, string createdBy, DateTime date)
        {
            try
            {
                SettingService.SaveSetting(setting, SettingType.TseEquityFeeSetting, createdBy, date);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
        public List<TseEquityFeeSetting> GetHistoricalTseEquityFeeSettings(DateTime fromDate, DateTime toDate)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<TseEquityFeeSetting>(SettingType.TseEquityFeeSetting, fromDate,
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
