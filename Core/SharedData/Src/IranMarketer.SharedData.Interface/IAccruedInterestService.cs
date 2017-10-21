//using Pikad.Framework.Infra.Service;
//using IranMarketer.Domain.Entity;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace IranMarketer.SharedData.Interface
//{
//    public interface IAccruedInterestService : IService<AccruedInterest, long>
//    {
//        void SaveBatch(List<AccruedInterest> accruedInterests);
//        void DeleteAccruedInterest(DateTime fromDate, DateTime toDate, string isin);
//        List<AccruedInterest> GetAccruedInterests(DateTime fromDate, DateTime toDate, string isin);
//        AccruedInterest GetAccruedInterest(DateTime inDate,string isin);
//        decimal GetAccruedInterestValue(DateTime inDate, string isin);

//        AccruedInterest GetAccruedInterest(DateTime inDate, int productId);
//        decimal GetAccruedInterestValue(DateTime inDate, int productId);


//    }
//}
