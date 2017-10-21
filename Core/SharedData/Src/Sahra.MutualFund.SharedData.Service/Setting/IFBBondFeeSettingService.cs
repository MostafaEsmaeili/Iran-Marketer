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
    public class IFBBondFeeSettingService : BaseSettingService
    {
        private ISettingService SettingService => CoreContainer.Container.Resolve<ISettingService>();
        private CustomLogger Logger => new CustomLogger(GetType().FullName);


        public IFBBondFeeSetting GetIFBBondFeeSetting(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSetting<IFBBondFeeSetting>(SettingType.IFBBondFeeSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public IFBBondFeeSetting GetIFBBondFeeSettingByDate(DateTime date)
        {
            try
            {
                var setting = SettingService.GetCurrentSettingByDate<IFBBondFeeSetting>(SettingType.IFBBondFeeSetting, date);
                return setting;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void SaveIFBBondFeeSetting(IFBBondFeeSetting setting, string createdBy, DateTime date)
        {
            try
            {
                SettingService.SaveSetting(setting, SettingType.IFBBondFeeSetting, createdBy, date);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
        public List<IFBBondFeeSetting> GetHistoricaIFBBondFeeSettings(DateTime fromDate, DateTime toDate)
        {
            try
            {
                var setting =
                    SettingService.GetHistoricalSettings<IFBBondFeeSetting>(SettingType.IFBBondFeeSetting, fromDate,
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
