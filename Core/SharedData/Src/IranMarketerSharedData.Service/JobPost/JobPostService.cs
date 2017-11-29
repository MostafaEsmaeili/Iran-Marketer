using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.SharedData.Service
{
    public class JobPostService : Service<JobPost,IJobPostRepository,int>,IJobPostService
    {
        
    }
}