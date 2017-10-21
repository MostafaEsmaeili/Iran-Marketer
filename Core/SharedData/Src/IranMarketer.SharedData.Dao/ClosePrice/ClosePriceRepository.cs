//using Pikad.Framework.Repository;
//using IranMarketer.SharedData.Service;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Pikad.Framework.UnitOfWork;
//using IranMarketer.Domain.Entity;
//using Pikad.Framework.Repository.Command;
//using System.Data;
//using System.Data.SqlClient;
//using Dapper;
//using Pikad.Framework.Infra.Logging;
//using Pikad.Framework.Repository.IoC;
//using IranMarketer.SharedData.Dao.ClosePrice;
//using IranMarketer.SharedData.Dao.Product;

//namespace IranMarketer.SharedData.Dao
//{
//    public class ClosePriceRepository : Repository<Domain.Entity.ClosePrice, long>, IClosePriceRepository
//    {
//        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
//        public ClosePriceRepository(IDbFactory factory) : base(factory)
//        {
//        }

//        public long SaveClosePrice(Domain.Entity.ClosePrice closePrice)
//        {
//            try
//            {
//                var command = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters()
//                };
//                SetParameter(closePrice, command);
//                command.SqlCommand = "shd.SaveClosePrice";
//                return Save(command);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public long UpdateClosePrice(Domain.Entity.ClosePrice closePrice)
//        {
//            try
//            {
//                var command = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters()
//                };

//                SetParameter(closePrice, command, true);
//                command.SqlCommand = "shd.UpdateClosePrice";
//                return Update(command);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public List<Domain.Entity.ClosePrice> GetClosePrices(DateTime date)
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.GetClosePrices"
//                };
//                customCommand.Parameters.Add("date", date, DbType.Date);
//                return GetAll(customCommand, new ClosePriceRowMapper()).ToList();
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public Domain.Entity.ClosePrice GetClosePrice(DateTime date, string isin)
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.GetClosePriceByIsin"
//                };
//                customCommand.Parameters.Add("date", date, DbType.Date);
//                customCommand.Parameters.Add("isin", isin, DbType.String);
//                return Get(customCommand, new ClosePriceRowMapper());
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public Domain.Entity.ClosePrice GetClosePrice(DateTime date, int productId)
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.GetClosePriceByProductId"
//                };
//                customCommand.Parameters.Add("date", date, DbType.Date);
//                customCommand.Parameters.Add("productId", productId, DbType.Int32);
//                return Get(customCommand, new ClosePriceRowMapper());
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
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.DeleteClosePrice"
//                };
//                customCommand.Parameters.Add("date", date, DbType.Date);
//                Update(customCommand);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public void SaveBatch(List<Domain.Entity.ClosePrice> closePrices)
//        {
//            try
//            {
//                var closePriceTable = ToDataTable(closePrices);
//                var session = CoreContainer.Container.Resolve<ISession>();
//                var bulkCopy = GetClosePriceSqlBulkCopy((SqlConnection)session.Connection);
//                using (session.Connection)
//                {
//                    bulkCopy.WriteToServer(closePriceTable);
//                }
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        private SqlBulkCopy GetClosePriceSqlBulkCopy(SqlConnection connection)
//        {
//            try
//            {
//                var bulkCopy = new SqlBulkCopy(connection);
//                bulkCopy.ColumnMappings.Add("ClosingPrice", "ClosingPrice");
//                bulkCopy.ColumnMappings.Add("Date", "Date");
//                bulkCopy.ColumnMappings.Add("Isin", "Isin");
//                bulkCopy.ColumnMappings.Add("ProductId", "ProductId");
//                bulkCopy.ColumnMappings.Add("ClosePriceAdj", "ClosePriceAdj");
//                bulkCopy.ColumnMappings.Add("CreateDate", "CreateDate");
//                bulkCopy.ColumnMappings.Add("IsAdjusted", "IsAdjusted");
//                bulkCopy.ColumnMappings.Add("LastModifiedDate", "LastModifiedDate");
//                bulkCopy.ColumnMappings.Add("LastTradePrice", "LastTradePrice");
//                bulkCopy.ColumnMappings.Add("LastTradePriceAdj", "LastTradePriceAdj");
//                bulkCopy.BatchSize = 2000;
//                bulkCopy.DestinationTableName = "shd.ClosePrice";
//                return bulkCopy;
//            }
//            catch (Exception ex)
//            {

//                throw ex;
//            }
//        }

//        private DataTable ToDataTable(List<Domain.Entity.ClosePrice> closePrices)
//        {
//            try
//            {
//                var table = new DataTable();
//                table.Columns.Add("ClosingPrice", typeof(decimal));
//                table.Columns.Add("Date", typeof(DateTime));
//                table.Columns.Add("Isin", typeof(string));
//                table.Columns.Add("ProductId", typeof(int));
//                table.Columns.Add("ClosePriceAdj", typeof(decimal));
//                table.Columns.Add("CreateDate", typeof(DateTime));
//                table.Columns.Add("IsAdjusted", typeof(bool));
//                table.Columns.Add("LastModifiedDate", typeof(DateTime));
//                table.Columns.Add("LastTradePrice", typeof(decimal));
//                table.Columns.Add("LastTradePriceAdj", typeof(decimal));
            

//                foreach (var voucherDetail in closePrices)
//                {
//                    try
//                    {
//                        var row = table.NewRow();
//                        row["ClosingPrice"] = voucherDetail.ClosingPrice;
//                        row["Date"] = voucherDetail.Date;
//                        row["Isin"] = voucherDetail.Isin;
//                        row["ProductId"] = voucherDetail.ProductId;
//                        row["ClosePriceAdj"] = voucherDetail.ClosePriceAdj;
//                        row["CreateDate"] = voucherDetail.CreateDate;
//                        row["IsAdjusted"] = voucherDetail.IsAdjusted;
//                        row["LastModifiedDate"] = voucherDetail.LastModifiedDate;
//                        row["LastTradePrice"] = voucherDetail.LastTradePrice;
//                        row["LastTradePriceAdj"] = voucherDetail.LastTradePriceAdj;
//                        table.Rows.Add(row);
//                    }
//                    catch (Exception e)
//                    {
//                        throw e;
//                    }
//                }
//                return table;
//            }
//            catch (Exception ex)
//            {
//                throw ex;
//            }
//        }

//        private static void SetParameter(Domain.Entity.ClosePrice closePrice, CustomCommand command, bool isUpdate = false)
//        {
//            command.Parameters.Add("Date", closePrice.Date, DbType.Date);
//            command.Parameters.Add("ProductId", closePrice.ProductId, DbType.Int32);
//            command.Parameters.Add("Isin", closePrice.Isin, DbType.String);
//            command.Parameters.Add("IsAdjusted", closePrice.IsAdjusted, DbType.Boolean);
//            command.Parameters.Add("ClosingPrice", closePrice.ClosingPrice, DbType.Decimal);
//            command.Parameters.Add("ClosePriceAdj", closePrice.ClosePriceAdj, DbType.Decimal);
//            command.Parameters.Add("LastTradePrice", closePrice.LastTradePrice, DbType.Decimal);
//            command.Parameters.Add("LastTradePriceAdj", closePrice.LastTradePriceAdj, DbType.Decimal);
//            command.Parameters.Add("CreateDate", closePrice.CreateDate, DbType.DateTime);
//            command.Parameters.Add("LastModifiedDate", closePrice.LastModifiedDate, DbType.DateTime);
//            if (isUpdate)
//            {
//                command.Parameters.Add("Id", closePrice.Id, DbType.Int32);
//            }
//        }
//    }
//}
