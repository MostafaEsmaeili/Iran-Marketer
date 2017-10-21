using Pikad.Framework.Infra.Service;
using IranMarketer.PartyManagement.Interface;
using System;
using System.Linq;
using IranMarketer.Domain.Entity;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Service
{
    public class ContactService : Service<Contact, IContactRepository, long>, IContactService
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public long SaveContact(Contact contact, IUnitOfWork unitOfWork)
        {
            try
            {
                return Dao.SaveContact(contact,unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long SaveContact(Contact contact)
        {
            try
            {
                return Dao.SaveContact(contact);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdateContact(Contact contact, IUnitOfWork unitOfWork)
        {
            try
            {
                return Dao.UpdateContact(contact,unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdateContact(Contact contact)
        {
            try
            {
                return Dao.UpdateContact(contact);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Contact GetContactByPartyId(long partyId)
        {
            try
            {
                return Dao.Get(x=>x.PartyId==partyId).FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}