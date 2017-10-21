using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Service
{
    public interface IPartyBankAccountRepository : IRepository<PartyBankAccount, long>
    {
        long SavePartyBankAccount(PartyBankAccount partyBankAccount);
        long UpdatePartyBankAccount(PartyBankAccount partyBankAccount);
        long SavePartyBankAccount(PartyBankAccount partyBankAccount, IUnitOfWork unitOfWork);
        long UpdatePartyBankAccount(PartyBankAccount partyBankAccount, IUnitOfWork unitOfWork);
        PartyBankAccount GetPartyBankAccount(long partyId, string accountNumber, int bankId);
        PartyBankAccount GetPartyDefaultBankAccount(long partyId);
        List<Domain.Entity.PartyBankAccount> GetPartyBankAccountsByPartyId(long partyId);

    }
}
