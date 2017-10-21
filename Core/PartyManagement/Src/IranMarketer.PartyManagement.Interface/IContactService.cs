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
    public interface IContactService : IService<Contact, long>
    {
        long SaveContact(Contact contact,IUnitOfWork unitOfWork);
        long SaveContact(Contact contact);
        long UpdateContact(Contact contact, IUnitOfWork unitOfWork);
        Contact GetContactByPartyId(long partyId);
    }
}
