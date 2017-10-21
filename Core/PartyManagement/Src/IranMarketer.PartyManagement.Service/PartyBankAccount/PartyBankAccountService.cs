using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Service
{
    public class PartyBankAccountService : Service<PartyBankAccount, IPartyBankAccountRepository, long>, IPartyBankAccountService
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public long SavePartyBankAccount(PartyBankAccount partyBankAccount, IUnitOfWork unitOfWork)
        {
            try
            {
                return Dao.SavePartyBankAccount(partyBankAccount, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long SavePartyBankAccount(PartyBankAccount partyBankAccount)
        {
            try
            {
                return Dao.SavePartyBankAccount(partyBankAccount);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public long UpdatePartyBankAccount(PartyBankAccount partyBankAccount)
        {
            try
            {
                return Dao.UpdatePartyBankAccount(partyBankAccount);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdatePartyBankAccount(PartyBankAccount partyBankAccount, IUnitOfWork unitOfWork)
        {
            try
            {
                return Dao.UpdatePartyBankAccount(partyBankAccount, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public PartyBankAccount GetPartyBankAccount(long partyId, string accountNumber, int bankId)
        {
            try
            {
                return Dao.GetPartyBankAccount(partyId, accountNumber, bankId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public PartyBankAccount GetPartyDefaultBankAccount(long partyId)
        {
            try
            {
                return Dao.GetPartyDefaultBankAccount(partyId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<PartyBankAccount> GetPartyBankAccount(long partyId)
        {
            try
            {
                var list = Dao.GetPartyBankAccountsByPartyId(partyId).ToList();
                return list;
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message,e);
                throw;
            }
        }
    }
}
