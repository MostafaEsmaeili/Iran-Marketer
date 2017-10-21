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
    public class AccruedInterestService : Service<AccruedInterest, IAccruedInterestRepository, long>, IAccruedInterestService
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public void SaveBatch(List<AccruedInterest> accruedInterests)
        {
            try
            {
                Dao.SaveBatch(accruedInterests);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public void DeleteAccruedInterest(DateTime fromDate, DateTime toDate, string isin)
        {
            try
            {
                Dao.DeleteAccruedInterest(fromDate,toDate,isin);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<AccruedInterest> GetAccruedInterests(DateTime fromDate, DateTime toDate, string isin)
        {
            try
            {
                return Dao.GetAccruedInterests(fromDate, toDate, isin);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public AccruedInterest GetAccruedInterest(DateTime inDate, string isin)
        {
            try
            {
                return Dao.GetAccruedInterest(inDate, isin);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public decimal GetAccruedInterestValue(DateTime inDate, string isin)
        {
            try
            {
                return Dao.GetAccruedInterestValue(inDate, isin);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public AccruedInterest GetAccruedInterest(DateTime inDate, int productId)
        {
            try
            {
                return Dao.GetAccruedInterest(inDate, productId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public decimal GetAccruedInterestValue(DateTime inDate, int productId)
        {
            try
            {
                return Dao.GetAccruedInterestValue(inDate, productId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
