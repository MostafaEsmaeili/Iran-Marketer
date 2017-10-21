using IranMarketer.SharedData.Service.Industries;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.SharedData.Dao.Industry
{
    public class IndustriesRepository : Repository<Domain.Entity.Industry,int>,IIndustryRepository
    {
        public IndustriesRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}