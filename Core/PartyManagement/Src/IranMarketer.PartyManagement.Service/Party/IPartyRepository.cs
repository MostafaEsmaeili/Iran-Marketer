using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.Pagination;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Filters;
using Party = IranMarketer.Domain.Entity.Party;

namespace IranMarketer.PartyManagement.Service
{
    public interface IPartyRepository : IRepository<Domain.Entity.Party, long>
    {
        long SaveParty(Party party);
        long UpdateParty(Party party);
        long SaveParty(Party party, IUnitOfWork unitOfWork);
        void SaveBulkParties(List<Party> parties);
        List<Party> SearchParties(string phrase);
        Party GetByNationalId(string nationalId);
        string GetLastPartyDetailLedgerCode();
        string GetPartyDetailLedgerCode(string nationalId);
        long GetPartyDetailLedgerId(string nationalId);
       // List<FlatParty> GetFaltParties();
        long UpdateParty(Party party, IUnitOfWork unitOfWork);
        string GetPartyFullName(string userName);
        PageCollection<Customer> GetFlatCustomers(BaseReportFilter<FlatCustomerReportFilter> filter);
        long SaveSimpleParty(Party party, IUnitOfWork unitOfWork);
        long UpdateSimpleParty(Party party, IUnitOfWork unitOfWork);
        List<Party> SearchParties(string phrase, int roleCode);
        Party GetByUserName(string userName);
    }
}
