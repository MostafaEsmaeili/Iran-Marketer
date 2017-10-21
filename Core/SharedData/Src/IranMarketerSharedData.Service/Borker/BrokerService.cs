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
//    public class BrokerService : Service<Broker, IBrokerRepository, int>, IBrokerService
//    {
//        public List<Broker> GetBrokers()
//        {
//            try
//            {
//                return Dao.GetAll().ToList();
//            }
//            catch (Exception e)
//            {
//                throw e;
//            }
//        }

//        public Broker GetBrokerByCode(string code)
//        {
//            try
//            {
//                throw new NotImplementedException();
//            }
//            catch (Exception e)
//            {
//                throw;
//            }
//        }
//    }
//}
