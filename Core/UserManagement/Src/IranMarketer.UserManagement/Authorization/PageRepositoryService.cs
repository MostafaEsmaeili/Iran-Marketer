using System;
using System.Collections.Generic;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.UserManagement
{
    public class PageRepositoryService : Service<PageRepository,IPageRepositoryRepository,int>,IPageRepositoryService
    {
        private CustomLogger Logger=>new CustomLogger(GetType().FullName);

        public List<PageRepository> GetPageRepositories()
        {
            try
            {
                return Dao.GetPageRepositories();
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public List<PageRepository> GetPageRepositoriesByPageType(PageType pageType)
        {
            try
            {
                return Dao.GetPageRepositoriesByPageType(pageType);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public List<PageRepository> GetPageRepositoriesByServiceRepositoryId(int serviceRepositoryId)
        {
            try
            {
                return Dao.GetPageRepositoriesByServiceRepositoryId(serviceRepositoryId);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public int SavePageRepository(PageRepository pageRepository)
        {
            try
            {
                return Dao.SavePageRepository(pageRepository);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void DeletePageRepository(int id)
        {
            try
            {
                DeletePageRepository(id);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void DeletePageRepositoriesByServiceRepositoryId(int serviceRepId)
        {
            try
            {
                DeletePageRepositoriesByServiceRepositoryId(serviceRepId);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void DeleteAllPageRepositories()
        {
            try
            {
                DeleteAllPageRepositories();
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
    }
}