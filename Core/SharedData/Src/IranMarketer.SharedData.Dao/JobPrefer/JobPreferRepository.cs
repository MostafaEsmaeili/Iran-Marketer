using IranMarketer.SharedData.Service.JobPrefer;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.SharedData.Dao.JobPrefer
{
    public class JobPreferRepository : Repository<Domain.Entity.JobPrefer,int>,IJobPreferRepository
    {
        public JobPreferRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}