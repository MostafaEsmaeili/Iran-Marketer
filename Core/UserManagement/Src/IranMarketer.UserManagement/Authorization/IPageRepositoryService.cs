using System.Collections.Generic;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.UserManagement
{
    public interface IPageRepositoryService : IService<PageRepository,int>
    {
        List<PageRepository> GetPageRepositories();
        List<PageRepository> GetPageRepositoriesByPageType(PageType pageType);
        List<PageRepository> GetPageRepositoriesByServiceRepositoryId(int serviceRepositoryId);
        int SavePageRepository(PageRepository pageRepository);
        void DeletePageRepository(int id);
        void DeletePageRepositoriesByServiceRepositoryId(int serviceRepId);
        void DeleteAllPageRepositories();
    }
}