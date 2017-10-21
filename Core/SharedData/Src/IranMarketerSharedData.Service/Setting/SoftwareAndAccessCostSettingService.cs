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
    public class SoftwareAndAccessCostSettingService : BaseSettingService
    {
        private ISettingService SettingService => CoreContainer.Container.Resolve<ISettingService>();
        private CustomLogger Logger => new CustomLogger(GetType().FullName);


        public SoftwareAndAccessCostSetting GetSoftwareAndAccessCostSetting(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSetting<SoftwareAndAccessCostSetting>(SettingType.SoftwareAndAccessCostSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public SoftwareAndAccessCostSetting GetSoftwareAndAccessCostSettingByDate(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSettingByDate<SoftwareAndAccessCostSetting>(SettingType.SoftwareAndAccessCostSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void SaveSoftwareAndAccessCostSetting(SoftwareAndAccessCostSetting setting, string createdBy, DateTime date)
        {
            try
            {
                SettingService.SaveSetting(setting, SettingType.SoftwareAndAccessCostSetting, createdBy, date);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public List<SoftwareAndAccessCostSetting> GetHistoricalSoftwareAndAccessCostSettings(DateTime fromDate, DateTime toDate)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<SoftwareAndAccessCostSetting>(SettingType.SoftwareAndAccessCostSetting, fromDate,
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
