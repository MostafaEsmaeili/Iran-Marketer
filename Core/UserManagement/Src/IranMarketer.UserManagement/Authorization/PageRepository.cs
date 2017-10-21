using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.UserManagement
{
    public class PageRepositoryRepository: Repository<Domain.Entity.PageRepository,int>, IPageRepositoryRepository
    {
        private CustomLogger Logger=>new CustomLogger(GetType().FullName);
        public List<PageRepository> GetPageRepositories()
        {
            try
            {

               return GetAll().ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<PageRepository> GetPageRepositoriesByPageType(PageType pageType)
        {
            try
            {
                var list = Get(x => x.PageType == (int)pageType).ToList();

                return list;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<PageRepository> GetPageRepositoriesByServiceRepositoryId(int serviceRepositoryId)
        {
            try
            {
                var list = Get(x => x.ServiceRepositoryId == serviceRepositoryId).ToList();

                return list;

            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public int SavePageRepository(PageRepository pageRepository)
        {
            try
            {
              return  Save(pageRepository);

            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public void DeletePageRepository(int id)
        {
            try
            {
                Delete(new PageRepository
                {
                    Id = id
                });
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public void DeletePageRepositoriesByServiceRepositoryId(int serviceRepId)
        {
            try
            {

                var connnection = CoreContainer.Container.Resolve<ISession>();
              var parameter=new DynamicParameters();

                parameter.Add("serviceRepId", serviceRepId, DbType.Int32);
                connnection.Execute("sec.DeletePageRepositoriesByServiceRepositoryId", parameter,
                    commandType: CommandType.StoredProcedure);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public void DeleteAllPageRepositories()
        {
            try
            {
                
                var connnection = CoreContainer.Container.Resolve<ISession>();
                connnection.DeleteAll<PageRepository>();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }


        public PageRepositoryRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}