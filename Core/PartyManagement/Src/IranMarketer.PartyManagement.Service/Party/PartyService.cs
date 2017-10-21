using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Infra.Service;
using Pikad.Framework.Repository.Pagination;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Filters;
using Party = IranMarketer.Domain.Entity.Party;

namespace IranMarketer.PartyManagement.Service
{
    public class PartyService : Service<Party, IPartyRepository, long>, IPartyService
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public long SaveParty(Party party)
        {
            try
            {
                return Dao.SaveParty(party);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdateParty(Party party)
        {
            try
            {
                return Dao.UpdateParty(party);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long SaveParty(Party party, IUnitOfWork unitOfWork)
        {
            try
            {
                return Dao.SaveParty(party, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long SaveSimpleParty(Party party, IUnitOfWork unitOfWork)
        {
            try
            {
                return Dao.SaveSimpleParty(party, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }

        }

        public long UpdateSimpleParty(Party party, IUnitOfWork unitOfWork)
        {
            try
            {
                return Dao.UpdateSimpleParty(party, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdateParty(Party party, IUnitOfWork unitOfWork)
        {
            try
            {
                return Dao.UpdateParty(party, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public void SaveBulkParties(List<Party> parties)
        {
            try
            {
                Dao.SaveBulkParties(parties);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Party GetByNationalId(string nationalId)
        {
            try
            {
                return Dao.GetByNationalId(nationalId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Party GetById(long partyId)
        {
            try
            {
                return Dao.Get(new Party() {Id = partyId});
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<Party> SearchParties(string phrase)
        {
            try
            {
                return Dao.SearchParties(phrase);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<Party> SearchParties(string phrase, int roleCode)
        {
            try
            {
                return Dao.SearchParties(phrase,roleCode);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public string GetLastPartyDetailLedgerCode()
        {
            try
            {
                return Dao.GetLastPartyDetailLedgerCode();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public string GetPartyDetailLedgerCode(string nationalId)
        {
            try
            {
                return Dao.GetPartyDetailLedgerCode(nationalId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long GetPartyDetailLedgerId(string nationalId)
        {
            try
            {
                return Dao.GetPartyDetailLedgerId(nationalId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        //public List<FlatParty> GetFaltParties()
        //{
        //    try
        //    {
        //        return Dao.GetFaltParties();
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        throw ex;
        //    }
        //}

        public string GetPartyFullName(string userName)
        {
            try
            {
                return Dao.GetPartyFullName(userName);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public PageCollection<Customer> GetFlatCustomers(BaseReportFilter<FlatCustomerReportFilter> filter)
        {
            try
            {
                return Dao.GetFlatCustomers(filter);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Party GetByUserName(string userName)
        {
            try
            {
                return Dao.GetByUserName(userName);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
