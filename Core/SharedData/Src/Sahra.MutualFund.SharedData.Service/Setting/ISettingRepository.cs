using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.SharedData.Service
{
    public interface ISettingRepository : IRepository<BaseSetting, int>
    {
        int SaveSetting(object settingToSave, SettingType settingType, string createdBy,
            DateTime fromDate = default(DateTime), DateTime? toDate = null);
        T GetCurrentSetting<T>(SettingType settingType, DateTime date = default(DateTime));
        List<T> GetHistoricalSettings<T>(SettingType settingType, DateTime froDate, DateTime toDate);
        List<T> GetHistoricalSettings<T>(Expression<Func<BaseSetting, bool>> expression);
        T GetCurrentSettingByDate<T>(SettingType settingType, DateTime date) where T : class;
    }
}