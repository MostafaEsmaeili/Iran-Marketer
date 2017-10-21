using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;

namespace IranMarketer.SharedData.Service
{
    public class HolidayService : Service<Holiday, IHolidayRepository, int>, IHolidayService
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public bool IsHoliday(DateTime date)
        {
            try
            {
                return Dao.IsHoliday(date);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw ex;
            }
        }
    }
}
