//using Pikad.Framework.Repository;
//using IranMarketer.SharedData.Service;
//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Dapper;
//using Pikad.Framework.Infra.Logging;
//using Pikad.Framework.Infra.Utility;
//using Pikad.Framework.Repository.Command;
//using Pikad.Framework.Repository.IoC;
//using Pikad.Framework.UnitOfWork;
//using IranMarketer.Domain.Entity;
//using IranMarketer.SharedData.Dao.Product;

//namespace IranMarketer.SharedData.Dao
//{
//    public class AccruedInterestRepository : Repository<Domain.Entity.AccruedInterest, long>, IAccruedInterestRepository
//    {
//        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
//        public AccruedInterestRepository(IDbFactory factory) : base(factory)
//        {
//        }

//        public void SaveBatch(List<AccruedInterest> accruedInterests)
//        {
//            try
//            {
//                var accruedInterestTable = ToDataTable(accruedInterests);
//                var session = CoreContainer.Container.Resolve<ISession>();
//                var bulkCopy = GetAccruedInterestSqlBulkCopy((SqlConnection)session.Connection);
//                using (session.Connection)
//                {
//                    bulkCopy.WriteToServer(accruedInterestTable);
//                }
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        private SqlBulkCopy GetAccruedInterestSqlBulkCopy(SqlConnection uowConnection)
//        {
//            try
//            {
//                var bulkCopy = new SqlBulkCopy(uowConnection);
//                bulkCopy.ColumnMappings.Add("ProductId", "ProductId");
//                bulkCopy.ColumnMappings.Add("Date", "Date");
//                bulkCopy.ColumnMappings.Add("InterestValue", "InterestValue");
//                bulkCopy.ColumnMappings.Add("IsPaymentDay", "IsPaymentDay");
//                bulkCopy.ColumnMappings.Add("Created", "Created");
//                bulkCopy.ColumnMappings.Add("Modified", "Modified");
//                bulkCopy.ColumnMappings.Add("Isin", "Isin");
//                bulkCopy.ColumnMappings.Add("CumulativeValue", "CumulativeValue");

//                bulkCopy.BatchSize = 2000;
//                bulkCopy.DestinationTableName = "shd.AccruedInterest";
//                return bulkCopy;
//            }
//            catch (Exception ex)
//            {

//                throw ex;
//            }
//        }

//        private DataTable ToDataTable(List<AccruedInterest> accruedInterests)
//        {
//            try
//            {
//                var table = new DataTable();
//                table.Columns.Add("ProductId", typeof(int));
//                table.Columns.Add("Date", typeof(DateTime));
//                table.Columns.Add("InterestValue", typeof(decimal));
//                table.Columns.Add("IsPaymentDay", typeof(bool));
//                table.Columns.Add("Created", typeof(DateTime));
//                table.Columns.Add("Modified", typeof(DateTime));
//                table.Columns.Add("Isin", typeof(string));
//                table.Columns.Add("CumulativeValue", typeof(decimal));


//                foreach (var voucherDetail in accruedInterests)
//                {
//                    try
//                    {
//                        var row = table.NewRow();
//                        row["ProductId"] = voucherDetail.ProductId;
//                        row["Date"] = voucherDetail.Date;
//                        row["InterestValue"] = voucherDetail.InterestValue;
//                        row["IsPaymentDay"] = voucherDetail.IsPaymentDay;
//                        row["Created"] = voucherDetail.Created;
//                        row["Modified"] = voucherDetail.Modified;
//                        row["Isin"] = voucherDetail.Isin;
//                        row["CumulativeValue"] = voucherDetail.CumulativeValue;


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

//        public void DeleteAccruedInterest(DateTime fromDate, DateTime toDate, string isin)
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.DeleteAccruedInterest"
//                };
//                customCommand.Parameters.Add("fromDate", fromDate, DbType.Date);
//                customCommand.Parameters.Add("toDate", toDate, DbType.Date);
//                customCommand.Parameters.Add("isin", isin, DbType.String);
//                Update(customCommand);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public List<AccruedInterest> GetAccruedInterests(DateTime fromDate, DateTime toDate, string isin)
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.GetAccruedInterests"
//                };
//                customCommand.Parameters.Add("fromDate", fromDate, DbType.Date);
//                customCommand.Parameters.Add("toDate", toDate, DbType.Date);
//                customCommand.Parameters.Add("isin", isin, DbType.String);
//                return GetAll(customCommand, new AccruedInterestRowMapper()).ToList();
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public AccruedInterest GetAccruedInterest(DateTime inDate, string isin)
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.GetAccruedInterestByIsin"
//                };
//                customCommand.Parameters.Add("inDate", inDate, DbType.Date);
//                customCommand.Parameters.Add("isin", isin, DbType.String);
//                return Get(customCommand,new AccruedInterestRowMapper());
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public AccruedInterest GetAccruedInterest(DateTime inDate, int productId)
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.GetAccruedInterestByProductId"
//                };
//                customCommand.Parameters.Add("inDate", inDate, DbType.Date);
//                customCommand.Parameters.Add("productId", productId, DbType.Int32);
//                return Get(customCommand, new AccruedInterestRowMapper());
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public decimal GetAccruedInterestValue(DateTime inDate, string isin)
//        {
//            IDataReader dr = null;
//            decimal res = 0;
//            try
//            {
//                var command = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters()
//                };
//                command.Parameters.Add("date", inDate, DbType.Date);
//                command.Parameters.Add("productId", isin, DbType.String);

//                command.SqlCommand = "shd.GetAccruedInterestValueByIsin";
//                dr = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
//                if (dr.Read())
//                {
//                    res = dr[0].SafeDecimal();
//                }
//                return res;
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//            finally
//            {
//                if (dr != null)
//                {
//                    dr.Dispose();
//                    dr.Close();
//                }
//            }
//        }

//        public decimal GetAccruedInterestValue(DateTime inDate, int productId)
//        {
//            IDataReader dr = null;
//            decimal res = 0;
//            try
//            {
//                var command = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters()
//                };
     
//                command.Parameters.Add("date", inDate, DbType.Date);
//                command.Parameters.Add("productId", productId, DbType.Int32);

//                command.SqlCommand = "shd.GetAccruedInterestValueByProductId";
//                dr = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
//                if (dr.Read())
//                {
//                    res = dr[0].SafeDecimal();
//                }
//                return res;
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//            finally
//            {
//                if (dr != null)
//                {
//                    dr.Dispose();
//                    dr.Close();
//                }
//            }
//        }
//    }
//}
