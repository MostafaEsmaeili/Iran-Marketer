using IranMarketer.PartyManagement.Service.RetailParty;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Dao.RetailParty
{
    public class RetailPartyRepository : Repository<Domain.Entity.RetailParty,int>,IRetailPartyRepository
    {
        public RetailPartyRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}