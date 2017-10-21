using IranMarketer.SharedData.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.SharedData.Service.JobPrefer
{
    public class JobPreferService : Service<Domain.Entity.JobPrefer,IJobPreferRepository,int>,IJobPreferService
    {
        
    }
}