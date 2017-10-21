using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Interface
{
    public interface IPartyBankAccountService : IService<PartyBankAccount, long>
    {
        long SavePartyBankAccount(PartyBankAccount partyBankAccount,IUnitOfWork unitOfWork);
        long SavePartyBankAccount(PartyBankAccount partyBankAccount);
        long UpdatePartyBankAccount(PartyBankAccount partyBankAccount);
        long UpdatePartyBankAccount(PartyBankAccount partyBankAccount,IUnitOfWork unitOfWork);
        PartyBankAccount GetPartyBankAccount(long partyId, string accountNumber, int bankId);
        PartyBankAccount GetPartyDefaultBankAccount(long partyId);

        List<PartyBankAccount> GetPartyBankAccount(long partyId);

    }
}
