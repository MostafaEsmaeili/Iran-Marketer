using System.Collections.Generic;
using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;


namespace IranMarketer.UserManagement
{
    public interface IServiceRepositorRepository : IRepository<ServiceRepository,int>
    {
        List<ServiceRepository> GetServiceRepositories();
        ServiceRepository GetServiceRepository(string serviceName, string methodName);
        int SaveServiceRepository(ServiceRepository serviceRepository);
 
        List<ServiceRepository> GetServiceRepositoriesByPageType(PageType pageType);
    }
}
