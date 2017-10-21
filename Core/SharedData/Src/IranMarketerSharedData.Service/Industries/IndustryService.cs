using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.SharedData.Service.Industries
{
    public class IndustryService : Service<Industry,IIndustryRepository,int>,IIndustryService
    {
        
    }
}