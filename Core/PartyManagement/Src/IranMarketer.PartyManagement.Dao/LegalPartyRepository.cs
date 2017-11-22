using IranMarketer.PartyManagement.Service.LegalParty;
using IranMarketer.PartyManagement.Service.RetailParty;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Dao
{
    public class LegalPartyRepository : Repository<Domain.Entity.LegalParty, int>, ILegalPartyRepository
    
    {
        public LegalPartyRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}