using System;
using System.Collections.Generic;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Common;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.SharedData.Interface;


namespace IranMarketer.SharedData.Service
{
    public class AllOtherExpensesService : BaseSettingService
    {
        private ISettingService SettingService => CoreContainer.Container.Resolve<ISettingService>();
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public void SaveAllOtherExpenses(AllOtherExpenses setting, string createdBy, DateTime date)
        {
            try
            {
                SettingService.SaveSetting(setting, SettingType.AllOtherExpensesSetting, createdBy, date);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public List<AllOtherExpenses> GetHistoricalAllOtherExpensesSettings(DateTime fromDate, DateTime toDate)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<AllOtherExpenses>(SettingType.AllOtherExpensesSetting, fromDate,
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