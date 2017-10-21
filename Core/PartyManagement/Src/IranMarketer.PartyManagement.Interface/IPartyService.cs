using System;
using System.Collections.Generic;
using System.IO.Pipes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Service;
using Pikad.Framework.Repository.Pagination;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Filters;
using Party = IranMarketer.Domain.Entity.Party;

namespace IranMarketer.PartyManagement.Interface
{
    public interface IPartyService : IService<Party, long>
    {
        long SaveParty(Party party);
        long UpdateParty(Party party);
        long SaveParty(Party party,IUnitOfWork unitOfWork);
        long SaveSimpleParty(Party party, IUnitOfWork unitOfWork);
        long UpdateSimpleParty(Party party, IUnitOfWork unitOfWork);
        long UpdateParty(Party party, IUnitOfWork unitOfWork);
        void SaveBulkParties(List<Party> parties);
        Party GetByNationalId(string nationalId);
        Party GetById(long partyId);
        List<Party> SearchParties(string phrase);
        List<Party> SearchParties(string phrase, int roleCode);

        string GetLastPartyDetailLedgerCode();
        string GetPartyDetailLedgerCode(string nationalId);
        long GetPartyDetailLedgerId(string nationalId);
        //List<FlatParty> GetFaltParties();
        string GetPartyFullName(string userName);
        PageCollection<Customer> GetFlatCustomers(BaseReportFilter<FlatCustomerReportFilter> filter);
        Party GetByUserName(string userName);

    }
}
