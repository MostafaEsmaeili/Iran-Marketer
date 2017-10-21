//using Pikad.Framework.Repository;
//using IranMarketer.Domain.Entity;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace IranMarketer.SharedData.Service
//{
//    public interface IClosePriceRepository : IRepository<ClosePrice, long>
//    {
//        long SaveClosePrice(ClosePrice closePrice);
//        long UpdateClosePrice(ClosePrice closePrice);
//        List<ClosePrice> GetClosePrices(DateTime date);
//        ClosePrice GetClosePrice(DateTime date, string isin);
//        ClosePrice GetClosePrice(DateTime date, int productId);
//        void DeleteClosePrice(DateTime date);
//        void SaveBatch(List<ClosePrice> closePrices);
//    }
//}
