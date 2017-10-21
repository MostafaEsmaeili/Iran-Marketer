using IranMarketer.SharedData.Service;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.SharedData.Dao
{
    public class JobCategoryRepository : Repository<Domain.Entity.JobCategory,int>,IJobCategoryRepository
    {
        public JobCategoryRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}