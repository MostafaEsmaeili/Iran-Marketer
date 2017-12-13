using IranMarketer.PartyManagement.Service.PartyProject;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Dao.PartyProject
{
    public class PartyProjectRepository : Repository<Domain.Entity.PartyProject,int> ,IPartyProjectRepository
    {
        public PartyProjectRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}