using Pikad.Framework.Repository;
using IranMarketer.SharedData.Service;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Dao.Product;

namespace IranMarketer.SharedData.Dao
{
    public class ProductRepository : Repository<Domain.Entity.Product, int>, IProductRepository
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public ProductRepository(IDbFactory factory) : base(factory)
        {
        }

        public List<Domain.Entity.Product> SearchProducts(string filter = "")
        {
            try
            {
                var customCommand = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters(),
                    SqlCommand = "shd.SearchProducts"
                };
                customCommand.Parameters.Add("phrase", filter.SafeString().SafePersianEncode().SafeTrim(), DbType.String);
                return GetAll(customCommand, new SimpleProductRowMapper()).ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public int SaveProduct(Domain.Entity.Product product)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(product, command);
                command.SqlCommand = "shd.SaveProduct";
                return Save(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        private void SetParameter(Domain.Entity.Product product, CustomCommand command, bool isUpdate = false)
        {
            try
            {
                command.Parameters.Add("AssetType", product.AssetType, DbType.Int32);
                command.Parameters.Add("BaseVolume", product.BaseVolume, DbType.Decimal);
                command.Parameters.Add("ISIN", product.ISIN, DbType.String);
                command.Parameters.Add("CompanyISIN", product.CompanyISIN, DbType.String);
                command.Parameters.Add("CompanyNameCode", product.CompanyNameCode, DbType.String);
                command.Parameters.Add("CompanyTitle", product.CompanyTitle, DbType.String);
                command.Parameters.Add("CreateDate", product.CreateDate, DbType.DateTime);
                command.Parameters.Add("EndDate", product.EndDate, DbType.Date);
                command.Parameters.Add("FirstTradeDate", product.FirstTradeDate, DbType.Date);
                command.Parameters.Add("LOT", product.LOT, DbType.Int32);
                command.Parameters.Add("LastModifiedDate", product.LastModifiedDate, DbType.DateTime);
                command.Parameters.Add("MarketCap", product.MarketCap, DbType.Decimal);
                command.Parameters.Add("ProductClassification", product.ProductClassification, DbType.Int32);
                command.Parameters.Add("ProductCode", product.ProductCode, DbType.String);
                command.Parameters.Add("ProductType", product.ProductType, DbType.Int32);
                command.Parameters.Add("MarketCode", product.MarketCode, DbType.String);
                command.Parameters.Add("PublishDate", product.PublishDate, DbType.Date);
                command.Parameters.Add("StockExchangeId", product.StockExchangeId, DbType.Int32);
                command.Parameters.Add("SettlementDays", product.SettlementDays, DbType.Int32);
                command.Parameters.Add("Symbol", product.Symbol, DbType.String);
                command.Parameters.Add("StartDate", product.StartDate, DbType.Date);
                command.Parameters.Add("SectorId", product.SectorId, DbType.Int32);
                command.Parameters.Add("Status", product.Status, DbType.Int32);
                command.Parameters.Add("SymbolNameCode", product.SymbolNameCode, DbType.String);
                command.Parameters.Add("SymbolEN", product.SymbolEN, DbType.String);
                command.Parameters.Add("SubscriptionStart", product.SubscriptionStart, DbType.Date);
                command.Parameters.Add("SubscriptionEnd", product.SubscriptionEnd, DbType.Date);
                command.Parameters.Add("UsanceDate", product.UsanceDate, DbType.Date);
                command.Parameters.Add("ValidFrom", product.ValidFrom, DbType.Date);
                command.Parameters.Add("ValidTo", product.ValidTo, DbType.Date);
                command.Parameters.Add("TseInsCode", product.TseInsCode, DbType.String);
                command.Parameters.Add("Title", product.Title, DbType.String);
                command.Parameters.Add("TitleEN", product.TitleEN, DbType.String);
                if (isUpdate)
                {
                    command.Parameters.Add("Id", product.Id, DbType.Int32);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public int UpdateProduct(Domain.Entity.Product product)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(product, command , true);
                command.SqlCommand = "shd.UpdateProduct";
                return Update(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }

        }

        public Domain.Entity.Product GetProductByIsin(string isin)
        {
            try
            {
                var customCommand = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters(),
                    SqlCommand = "shd.GetProductByIsin"
                };
                customCommand.Parameters.Add("isin", isin, DbType.String);
                return Get(customCommand, new ProductRowMapper());
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
