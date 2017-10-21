using System;
using System.Collections.Generic;
using System.Linq.Expressions;

using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Common;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.SharedData.Interface;

namespace IranMarketer.SharedData.Service
{
    public class GeneralFundSettingService : BaseSettingService
    {
        private ISettingService SettingService => CoreContainer.Container.Resolve<ISettingService>();
        private CustomLogger Logger => new CustomLogger(GetType().FullName);


        public GeneralFundSetting GetGeneralFundSetting(DateTime date)
        {
            try
            {

                var setting = SettingService.GetCurrentSetting<GeneralFundSetting>(SettingType.GeneralFundSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message,e);
                throw;
            }
        }

        public GeneralFundSetting GetGeneralFundSettingByDate(DateTime date)
        {
            try
            {

                var setting = SettingService.GetCurrentSettingByDate<GeneralFundSetting>(SettingType.GeneralFundSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
        public List<GeneralFundSetting> GetHistoricalGeneralFundSettings(DateTime fromDate,DateTime toDate)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<GeneralFundSetting>(SettingType.GeneralFundSetting, fromDate,
                        toDate);
                return setting;
            } 
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
        public List<GeneralFundSetting> GetHistoricalGeneralFundSettings(Expression<Func<BaseSetting,bool>> expression)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<GeneralFundSetting>(expression);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void SaveGeneralFundSetting(GeneralFundSetting setting,string createdBy,DateTime date)
        {
            try
            {
                SettingService.SaveSetting(setting, SettingType.GeneralFundSetting, createdBy, date);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
    }
}