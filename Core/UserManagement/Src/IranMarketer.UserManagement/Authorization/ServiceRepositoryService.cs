using System;
using System.Collections.Generic;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Service;


namespace IranMarketer.UserManagement
{
    public class ServiceRepositoryService : Service<ServiceRepository, IServiceRepositorRepository,int>, IServiceRepositoryService
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public List<ServiceRepository> GetServiceRepositories()
        {
            try
            {
                return Dao.GetServiceRepositories();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public ServiceRepository GetServiceRepository(string serviceName, string methodName)
        {
            try
            {
                return Dao.GetServiceRepository(serviceName, methodName);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public int SaveServiceRepository(ServiceRepository serviceRepository)
        {
            try
            {
                return Dao.SaveServiceRepository(serviceRepository);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<ServiceRepository> GetServiceRepositoriesByPageType(PageType pageType)
        {
            try
            {
                return Dao.GetServiceRepositoriesByPageType(pageType);
            }
            catch

                (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
