using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;

namespace IranMarketer.SharedData.Dao.Product
{
    public class ProductRowMapper : BaseMapper<Domain.Entity.Product>
    {
        public override Domain.Entity.Product InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new Domain.Entity.Product
                {
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeInt(),
                    StartDate = reader.SafeReader(ColumnPrefix + "StartDate").SafeDateTime(),
                    Status = reader.SafeReader(ColumnPrefix + "Status").SafeInt(),
                    EndDate = reader.SafeReader(ColumnPrefix + "EndDate").SafeDateTime(),
                    ValidFrom = reader.SafeReader(ColumnPrefix + "ValidFrom").SafeDateTime(),
                    CreateDate = reader.SafeReader(ColumnPrefix + "CreateDate").SafeDateTime(),
                    Symbol = reader.SafeReader(ColumnPrefix + "Symbol").SafeString(),
                    ISIN = reader.SafeReader(ColumnPrefix + "ISIN").SafeString(),
                    Title = reader.SafeReader(ColumnPrefix + "Title").SafeString(),
                    AssetType = reader.SafeReader(ColumnPrefix + "AssetType").SafeInt(),
                    BaseVolume = reader.SafeReader(ColumnPrefix + "BaseVolume").SafeDecimal(),
                    CompanyISIN = reader.SafeReader(ColumnPrefix + "CompanyISIN").SafeString(),
                    CompanyNameCode = reader.SafeReader(ColumnPrefix + "CompanyNameCode").SafeString(),
                    CompanyTitle = reader.SafeReader(ColumnPrefix + "CompanyTitle").SafeString(),
                    FirstTradeDate = reader.SafeReader(ColumnPrefix + "FirstTradeDate").SafeDateTime(),
                    LOT = reader.SafeReader(ColumnPrefix + "LOT").SafeInt(),
                    LastModifiedDate = reader.SafeReader(ColumnPrefix + "LastModifiedDate").SafeDateTime(),
                    MarketCap = reader.SafeReader(ColumnPrefix + "MarketCap").SafeDecimal(),
                    MarketCode = reader.SafeReader(ColumnPrefix + "MarketCode").SafeString(),
                    ProductClassification = reader.SafeReader(ColumnPrefix + "ProductClassification").SafeInt(),
                    ProductCode = reader.SafeReader(ColumnPrefix + "ProductCode").SafeString(),
                    ProductType = reader.SafeReader(ColumnPrefix + "ProductType").SafeInt(),
                    PublishDate = reader.SafeReader(ColumnPrefix + "PublishDate").SafeDateTime(),
                    SectorId = reader.SafeReader(ColumnPrefix + "SectorId").SafeInt(),
                    SettlementDays = reader.SafeReader(ColumnPrefix + "SettlementDays").SafeInt(),
                    StockExchangeId = reader.SafeReader(ColumnPrefix + "StockExchangeId").SafeInt(),
                    SubscriptionEnd = reader.SafeReader(ColumnPrefix + "SubscriptionEnd").SafeDateTime(),
                    SubscriptionStart = reader.SafeReader(ColumnPrefix + "SubscriptionStart").SafeDateTime(),
                    SymbolEN = reader.SafeReader(ColumnPrefix + "SymbolEN").SafeString(),
                    SymbolNameCode = reader.SafeReader(ColumnPrefix + "SymbolNameCode").SafeString(),
                    TitleEN = reader.SafeReader(ColumnPrefix + "TitleEN").SafeString(),
                    TseInsCode = reader.SafeReader(ColumnPrefix + "TseInsCode").SafeString(),
                    UsanceDate = reader.SafeReader(ColumnPrefix + "UsanceDate").SafeDateTime(),
                    ValidTo = reader.SafeReader(ColumnPrefix + "ValidTo").SafeDateTime()
                };
                return entity;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
