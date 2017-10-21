using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.SharedData.Interface;

namespace IranMarketer.SharedData.Service
{
    public class SettingService : Service<BaseSetting, ISettingRepository, int>, ISettingService
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public T GetCurrentSetting<T>(SettingType settingType, DateTime date = new DateTime())
        {
            try
            {
                var setting = Dao.GetCurrentSetting<T>(settingType, date);
                return setting;

            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public T GetCurrentSettingByDate<T>(SettingType settingType, DateTime date = new DateTime()) where T : class 
        {
            try
            {
                var setting = Dao.GetCurrentSettingByDate<T>(settingType, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public int SaveSetting(object settingToSave, SettingType settingType, string createdBy,
            DateTime fromDate = new DateTime(),
            DateTime? toDate = null)
        {
            try
            {
               ((AbstractSetting) settingToSave).ValidFrom = fromDate;
             
              
                return Dao.SaveSetting(settingToSave, settingType, createdBy, fromDate, toDate);

            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public List<T> GetHistoricalSettings<T>(SettingType settingType, DateTime froDate, DateTime toDate)
        {
            try
            {
                var setting = Dao.GetHistoricalSettings<T>(settingType, froDate,toDate);
                return setting;

            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public List<T> GetHistoricalSettings<T>(Expression<Func<BaseSetting, bool>> expression)
        {
            try
            {
                var setting = Dao.GetHistoricalSettings<T>(expression);
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