//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Linq;
//using Dapper;
//using Pikad.Framework.Infra.Logging;
//using Pikad.Framework.Infra.Utility;
//using Pikad.Framework.Repository;
//using Pikad.Framework.Repository.Command;
//using Pikad.Framework.UnitOfWork;
//using IranMarketer.Domain.Entity;
//using IranMarketer.SharedData.Dao.Branch;
//using IranMarketer.SharedData.Service;

//namespace IranMarketer.SharedData.Dao
//{
//    public class BranchRepository : Repository<Domain.Entity.Branch, int>, IBranchRepository
//    {

//        private CustomLogger Logger => new CustomLogger(GetType().FullName);
//        public BranchRepository(IDbFactory factory) : base(factory)
//        {
//        }

//        public List<Domain.Entity.Branch> GetBranches()
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = null,
//                    SqlCommand = "shd.GetBranches"
//                };
//                return GetAll(customCommand, new BranchRowMapper()).ToList();
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }

//        public int GetDefaultBranchId()
//        {
//            IDataReader dr = null;
//            int res = 0;
//            try
//            {
//                var command = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = null,
//                    SqlCommand = "shd.GetDefaultBranchId"
//                };
//                dr = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
//                if (dr.Read())
//                {
//                    res = dr[0].SafeInt();
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

//        public string GetBranchNameById(int branchId)
//        {
//            IDataReader dr = null;
//            string res = "";
//            try
//            {
//                var command = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.GetBranchnameById"
//                };
//                command.Parameters.Add("branchId", branchId, DbType.Int32);
//                dr = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
//                if (dr.Read())
//                {
//                    res = dr[0].SafeString();
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

//        public Domain.Entity.Branch GetBranchByCode(string code)
//        {
//            try
//            {
//                var customCommand = new CustomCommand
//                {
//                    CommandType = CommandType.StoredProcedure,
//                    Parameters = new DynamicParameters(),
//                    SqlCommand = "shd.GetBranchByCode"
//                };
//                customCommand.Parameters.Add("code",code,DbType.String);
//                return Get(customCommand, new BranchRowMapper());
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw ex;
//            }
//        }
//    }
//}
