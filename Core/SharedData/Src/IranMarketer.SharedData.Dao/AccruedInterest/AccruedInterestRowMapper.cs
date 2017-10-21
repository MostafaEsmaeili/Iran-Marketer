//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Pikad.Framework.Infra.Utility;
//using Pikad.Framework.Repository.Mapper;

//namespace IranMarketer.SharedData.Dao.Product
//{
//    public class AccruedInterestRowMapper : BaseMapper<Domain.Entity.AccruedInterest>
//    {
//        public override Domain.Entity.AccruedInterest InnerMapRow(IDataRecord reader)
//        {
//            try
//            {
//                ColumnPrefix = string.Empty;
//                var entity = new Domain.Entity.AccruedInterest
//                {
//                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeLong(),
//                    Date = reader.SafeReader(ColumnPrefix + "Date").SafeDateTime(),
//                    Isin = reader.SafeReader(ColumnPrefix + "Isin").SafeString(),
//                    ProductId = reader.SafeReader(ColumnPrefix + "ProductId").SafeInt(),
//                    Created = reader.SafeReader(ColumnPrefix + "Created").SafeDateTime(),
//                    InterestValue = reader.SafeReader(ColumnPrefix + "InterestValue").SafeDecimal(),
//                    IsPaymentDay = reader.SafeReader(ColumnPrefix + "IsPaymentDay").SafeBool(),
//                    Modified = reader.SafeReader(ColumnPrefix + "Modified").SafeDateTime(),
//                    CumulativeValue = reader.SafeReader(ColumnPrefix + "CumulativeValue").SafeDecimal()
//                };
//                return entity;
//            }
//            catch (Exception ex)
//            {
//                throw ex;
//            }
//        }
//    }
//}
