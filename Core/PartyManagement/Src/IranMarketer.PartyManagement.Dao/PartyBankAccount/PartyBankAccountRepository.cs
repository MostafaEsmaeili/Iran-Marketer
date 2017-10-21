using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;
using Pikad.Framework.Repository.Command;
using System.Data;
using Dapper;
using Pikad.Framework.Infra.Logging;
using IranMarketer.PartyManagement.Dao.PartyBankAccount;

namespace IranMarketer.PartyManagement.Dao
{
    public class PartyBankAccountRepository : Repository<Domain.Entity.PartyBankAccount, long>, IPartyBankAccountRepository
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public PartyBankAccountRepository(IDbFactory factory) : base(factory)
        {
        }

        public long SavePartyBankAccount(Domain.Entity.PartyBankAccount partyBankAccount)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(partyBankAccount, command);
                command.SqlCommand = "pm.SavePartyBankAccount";
                return Save(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        private void SetParameter(Domain.Entity.PartyBankAccount partyBankAccount, CustomCommand command, bool isUpdate = false)
        {
            command.Parameters.Add("PartyId", partyBankAccount.PartyId, DbType.Int64);
            command.Parameters.Add("AccountNumber", partyBankAccount.AccountNumber, DbType.String);
            command.Parameters.Add("AccountType", partyBankAccount.AccountType, DbType.Int32);
            command.Parameters.Add("IBAN", partyBankAccount.IBAN, DbType.String);
            command.Parameters.Add("BankId", partyBankAccount.BankId, DbType.Int32);
            command.Parameters.Add("BranchCode", partyBankAccount.BranchCode, DbType.String);
            command.Parameters.Add("BranchName", partyBankAccount.BranchName, DbType.String);
            command.Parameters.Add("IsDefault", partyBankAccount.IsDefault, DbType.Boolean);
            command.Parameters.Add("Status", partyBankAccount.Status, DbType.Int32);
            command.Parameters.Add("BankTitle", partyBankAccount.BankTitle, DbType.String);
            command.Parameters.Add("BankTitleEn", partyBankAccount.BankTitleEn, DbType.String);
            command.Parameters.Add("Created", partyBankAccount.Created, DbType.DateTime);
            command.Parameters.Add("Modified", partyBankAccount.Modified, DbType.DateTime);
            if (isUpdate)
            {
                command.Parameters.Add("Id", partyBankAccount.Id, DbType.Int64);
            }
        }

        public long UpdatePartyBankAccount(Domain.Entity.PartyBankAccount partyBankAccount)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(partyBankAccount, command, true);
                command.SqlCommand = "pm.UpdatePartyBankAccount";
                return Update(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long SavePartyBankAccount(Domain.Entity.PartyBankAccount partyBankAccount, IUnitOfWork unitOfWork)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(partyBankAccount, command);
                command.SqlCommand = "pm.SavePartyBankAccount";
                return Save(command, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdatePartyBankAccount(Domain.Entity.PartyBankAccount partyBankAccount, IUnitOfWork unitOfWork)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(partyBankAccount, command, true);
                command.SqlCommand = "pm.UpdatePartyBankAccount";
                return Update(command, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Domain.Entity.PartyBankAccount GetPartyBankAccount(long partyId, string accountNumber, int bankId)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("partyId", partyId, DbType.Int64);
                command.Parameters.Add("accountNumber", accountNumber, DbType.String);
                command.Parameters.Add("bankId", bankId, DbType.Int32);

                command.SqlCommand = "pm.GetPartyBankAccount";
                return Get(command, new PartyBankAccountRowMapper());
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Domain.Entity.PartyBankAccount GetPartyDefaultBankAccount(long partyId)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("partyId", partyId, DbType.Int64);
                command.SqlCommand = "pm.GetPartyDefaultBankAccount";
                return Get(command, new PartyBankAccountRowMapper());
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<Domain.Entity.PartyBankAccount> GetPartyBankAccountsByPartyId(long partyId)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("partyId", partyId, DbType.Int64);
                command.SqlCommand = "pm.GetPartyBankAccountsByPartyId";
                return GetAll(command, new PartyBankAccountRowMapper()).ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
