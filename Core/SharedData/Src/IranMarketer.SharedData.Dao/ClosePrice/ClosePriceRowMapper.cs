//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Pikad.Framework.Infra.Utility;
//using Pikad.Framework.Repository.Mapper;

//namespace IranMarketer.SharedData.Dao.ClosePrice
//{
//    public class ClosePriceRowMapper : BaseMapper<Domain.Entity.ClosePrice>
//    {
//        public override Domain.Entity.ClosePrice InnerMapRow(IDataRecord reader)
//        {
//            try
//            {
//                ColumnPrefix = string.Empty;
//                var entity = new Domain.Entity.ClosePrice
//                {
//                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeLong(),
//                    Date = reader.SafeReader(ColumnPrefix + "Date").SafeDateTime(),
//                    CreateDate = reader.SafeReader(ColumnPrefix + "CreateDate").SafeDateTime(),
//                    LastModifiedDate = reader.SafeReader(ColumnPrefix + "LastModifiedDate").SafeDateTime(),
//                    Isin = reader.SafeReader(ColumnPrefix + "Isin").SafeString(),
//                    ProductId = reader.SafeReader(ColumnPrefix + "ProductId").SafeInt(),
//                    ClosingPrice = reader.SafeReader(ColumnPrefix + "ClosingPrice").SafeDecimal(),
//                    LastTradePrice = reader.SafeReader(ColumnPrefix + "LastTradePrice").SafeDecimal(),
//                    IsAdjusted = reader.SafeReader(ColumnPrefix + "IsAdjusted").SafeBool(),
//                    ClosePriceAdj = reader.SafeReader(ColumnPrefix + "ClosePriceAdj").SafeDecimal(),
//                    LastTradePriceAdj = reader.SafeReader(ColumnPrefix + "LastTradePriceAdj").SafeDecimal(),
                  
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
