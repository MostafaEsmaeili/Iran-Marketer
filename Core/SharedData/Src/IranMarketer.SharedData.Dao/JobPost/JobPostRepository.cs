using IranMarketer.SharedData.Service;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.SharedData.Dao.JobPost
{
    public class JobPostRepository : Repository<Domain.Entity.JobPost,int>,IJobPostRepository
    {
        public JobPostRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}