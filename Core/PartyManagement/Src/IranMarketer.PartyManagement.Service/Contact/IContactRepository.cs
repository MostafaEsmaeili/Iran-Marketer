using Pikad.Framework.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Entity;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Service
{
    public interface IContactRepository : IRepository<Domain.Entity.Contact, long>
    {
        long SaveContact(Domain.Entity.Contact contact);
        long UpdateContact(Domain.Entity.Contact contact);
        long UpdateContact(Contact contact, IUnitOfWork unitOfWork);
        long SaveContact(Contact contact, IUnitOfWork unitOfWork);
    }
}
