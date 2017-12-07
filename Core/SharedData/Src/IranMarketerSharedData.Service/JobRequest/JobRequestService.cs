using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.SharedData.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.SharedData.Service.JobRequest
{
    public class JobRequestService : Service<Domain.Entity.JobRequest,IJobRequestRepository,int>,IJobRequestService
    {
    }
}
