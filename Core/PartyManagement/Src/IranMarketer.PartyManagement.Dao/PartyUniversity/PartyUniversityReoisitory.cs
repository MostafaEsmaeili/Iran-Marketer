using IranMarketer.PartyManagement.Service;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Dao
{
    public class PartyUniversityReoisitory : Repository<Domain.Entity.PartyUniversity,int>,IPartyUniversityRepository
    {
        public PartyUniversityReoisitory(IDbFactory factory) : base(factory)
        {
        }
    }
}