using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Bargozideh.Framework.Infra.IoC;
using Bargozideh.Framework.Infra.Logging;
using Bargozideh.Framework.Infra.Service;
using Bargozideh.Framework.Repository;
using Bargozideh.Framework.UnitOfWork;

namespace Bargozideh.Framework.Infra.Provider
{
    public abstract class AbstractProvider  <TEntity, TService, TPk> : Provider<TEntity, TPk>
        where TEntity :Entity<TPk>
        where TService : IService<TEntity, TPk>
        where TPk : IComparable
    { 
        public TService Service => CoreContainer.Container.Resolve<TService>();
        public CustomLogger Logger=>new CustomLogger(GetType().FullName);


        public override TEntity Get(TEntity entity)
        {
            try
            {
                return Service.Get(entity);

            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public override IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>> predicate)
        {
            try
            {
                return Service.Get(predicate);
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public override TEntity GetKey(TPk key)
        {
            try
            {
                return Service.GetKey(key);
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public override IEnumerable<TEntity> GetAll()
        {
            try
            {
                return Service.GetAll();
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }


        //public virtual IQueryable<TEntity> SelectQuery(string query, params object[] parameters)
        //{
        //    return Dao.SelectQuery(query, parameters).AsQueryable();
        //}

        //public int Save(TEntity entity, SqlMapper.IDynamicParameters parameters)
        //{
        //    return Dao.Save(entity,parameters);
        //}

        //public int Save(TEntity entity)
        //{
        //    return Dao.Save(entity);
        //}

        //public Task<int> SaveAsync(TEntity entity)
        //{
        //    return Dao.SaveAsync(entity);
        //}


        public override TPk SaveOrUpdate(TEntity entity)
        {
            try
            {
                return Service.SaveOrUpdate(entity);
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public  TPk Save(TEntity entity)
        {
            try
            {
                return Service.Save(entity);
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public override TPk Save(TEntity entity, IUnitOfWork unitOfWork)
        {
            try
            {
                return Service.Save(entity, unitOfWork);
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        //public void Trransactions(params Action[] action)
        //{

        //    var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
        //    using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
        //    {
        //        try
        //        {
        //            if(action[0].Method.)
        //        }
        //        catch (System.Exception ex)
        //        {
        //            uow.Rollback();
        //            throw ex;
        //        }
        //    }
        //}

        public override TPk SaveOrUpdate(TEntity entity, IUnitOfWork unitOfWork)
        {
            try
            {
                return Service.SaveOrUpdate(entity, unitOfWork);
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public override Task<bool> DeleteKeyAsync(TPk key)
        {
            try
            {
                return Service.DeleteKeyAsync(key);
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        //public virtual void Save(IEnumerable<TEntity> entities)
        //{
        //    //
        //}

        //public virtual int Update(TEntity entity)
        //{
        //    return Dao.Update(entity);
        //}

        //public virtual Task<int> UpdateAsync(TEntity entity)
        //{
        //    return Dao.UpdateAsync(entity);
        //}

        //public virtual void Delete(int id)
        //{
        //    Dao.Delete(id);
        //}


        public override void Delete(TEntity entity)
        {
            try
            {
                Service.Delete(entity);
            }
            catch (System.Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }
    }
}