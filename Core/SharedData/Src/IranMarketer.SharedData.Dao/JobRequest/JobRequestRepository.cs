using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.SharedData.Service.JobRequest;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.SharedData.Dao.JobRequest
{
   public class JobRequestRepository : Repository<Domain.Entity.JobRequest,int>,IJobRequestRepository
    {
        public JobRequestRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}
