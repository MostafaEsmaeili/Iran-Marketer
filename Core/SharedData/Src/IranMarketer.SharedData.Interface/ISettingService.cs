using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.SharedData.Interface
{
    public interface ISettingService : IService<BaseSetting,int>

    {
        T GetCurrentSetting<T>(SettingType settingType, DateTime date = default(DateTime));

        T GetCurrentSettingByDate<T>(SettingType settingType, DateTime date = default(DateTime)) where T : class;
        int SaveSetting(object settingToSave, SettingType settingType, string createdBy,
            DateTime fromDate = default(DateTime), DateTime? toDate = null);
        List<T> GetHistoricalSettings<T>(SettingType settingType, DateTime froDate, DateTime toDate);
        List<T> GetHistoricalSettings<T>(Expression<Func<BaseSetting, bool>> expression);
    }
}