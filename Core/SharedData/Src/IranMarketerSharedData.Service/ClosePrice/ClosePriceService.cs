//using Pikad.Framework.Infra.Logging;
//using Pikad.Framework.Infra.Service;
//using IranMarketer.Domain.Entity;
//using IranMarketer.SharedData.Interface;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace IranMarketer.SharedData.Service
//{
//    public class ClosePriceService : Service<ClosePrice, IClosePriceRepository, long>, IClosePriceService
//    {
//        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);

//        public List<ClosePrice> GetClosePrices(DateTime date)
//        {
//            try
//            {
//                return Dao.GetClosePrices(date);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public ClosePrice GetClosePrice(DateTime date, string isin)
//        {
//            try
//            {
//                return Dao.GetClosePrice(date, isin);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public ClosePrice GetClosePrice(DateTime date, int productId)
//        {
//            try
//            {
//                return Dao.GetClosePrice(date, productId);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public void DeleteClosePrice(DateTime date)
//        {
//            try
//            {
//                Dao.DeleteClosePrice(date);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public void SaveBatch(List<ClosePrice> closePrices)
//        {
//            try
//            {
//                Dao.SaveBatch(closePrices);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public long SaveClosePrice(ClosePrice closePrice)
//        {
//            try
//            {
//                return Dao.SaveClosePrice(closePrice);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }   
//        }

//        public long UpdateClosePrice(ClosePrice closePrice)
//        {
//            try
//            {
//                return Dao.UpdateClosePrice(closePrice);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }
//    }
//}
