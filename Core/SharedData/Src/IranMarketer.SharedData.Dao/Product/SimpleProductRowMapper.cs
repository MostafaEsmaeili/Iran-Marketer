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
    public class SimpleProductRowMapper : BaseMapper<Domain.Entity.Product>
    {
        public override Domain.Entity.Product InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new Domain.Entity.Product
                {
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeInt(),
                    Status = reader.SafeReader(ColumnPrefix + "Status").SafeInt(),
                    Symbol = reader.SafeReader(ColumnPrefix + "Symbol").SafeString(),
                    ISIN = reader.SafeReader(ColumnPrefix + "ISIN").SafeString(),
                    Title = reader.SafeReader(ColumnPrefix + "Title").SafeString(),
                    AssetType = reader.SafeReader(ColumnPrefix + "AssetType").SafeInt(),
                    BaseVolume = reader.SafeReader(ColumnPrefix + "BaseVolume").SafeDecimal(),
                    CompanyISIN = reader.SafeReader(ColumnPrefix + "CompanyISIN").SafeString(),
                    CompanyNameCode = reader.SafeReader(ColumnPrefix + "CompanyNameCode").SafeString(),
                    CompanyTitle = reader.SafeReader(ColumnPrefix + "CompanyTitle").SafeString(),
                    LOT = reader.SafeReader(ColumnPrefix + "LOT").SafeInt(),
                    MarketCap = reader.SafeReader(ColumnPrefix + "MarketCap").SafeDecimal(),
                    MarketCode = reader.SafeReader(ColumnPrefix + "MarketCode").SafeString(),
                    ProductClassification = reader.SafeReader(ColumnPrefix + "ProductClassification").SafeInt(),
                    ProductCode = reader.SafeReader(ColumnPrefix + "ProductCode").SafeString(),
                    ProductType = reader.SafeReader(ColumnPrefix + "ProductType").SafeInt(),
                    SectorId = reader.SafeReader(ColumnPrefix + "SectorId").SafeInt(),
                    SettlementDays = reader.SafeReader(ColumnPrefix + "SettlementDays").SafeInt(),
                    StockExchangeId = reader.SafeReader(ColumnPrefix + "StockExchangeId").SafeInt(),
                    SymbolEN = reader.SafeReader(ColumnPrefix + "SymbolEN").SafeString(),
                    SymbolNameCode = reader.SafeReader(ColumnPrefix + "SymbolNameCode").SafeString(),
                    TitleEN = reader.SafeReader(ColumnPrefix + "TitleEN").SafeString(),
                    TseInsCode = reader.SafeReader(ColumnPrefix + "TseInsCode").SafeString()
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
