using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Bargozideh.Framework.Repository;
using Bargozideh.Framework.UnitOfWork;

namespace Bargozideh.Framework.Infra.Service
{
    public abstract class Service<TEntity, TDao, TPk> : IService<TEntity,TPk>
        where TEntity : class
        where TDao : IRepository<TEntity, TPk>
        where TPk : IComparable
    {

        public TDao Dao { get; set; }




        //public virtual TEntity Find(params object[] keyValues)
        //{
        //    return Dao.Find(keyValues);
        //}

        public virtual TEntity Get(TEntity entity)
        {
            return Dao.Get(entity);
        }

        public IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>> predicate)
        {
            return Dao.Get(predicate);
        }

        public virtual TEntity GetKey(TPk key)
        {
            return Dao.GetKey(key);
        }

        public virtual IEnumerable<TEntity> GetAll()
        {
            return Dao.GetAll();
        }

        public virtual int GetCount()
        {
            return Dao.Count();
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


        public virtual TPk SaveOrUpdate(TEntity entity)
        {
            return Dao.SaveOrUpdate(entity);
        }

        public TPk Save(TEntity entity)
        {
            return Dao.Save(entity);
        }

        public TPk Save(TEntity entity, IUnitOfWork unitOfWork)
        {
            return Dao.Save(entity, unitOfWork);
        }

        public virtual TPk SaveOrUpdate(TEntity entity, IUnitOfWork unitOfWork)
        {
            return Dao.SaveOrUpdate(entity, unitOfWork);
        }

        public virtual Task<bool> DeleteKeyAsync(TPk key)
        {
            return Dao.DeleteKeyAsync(key);
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


        public virtual void Delete(TEntity entity)
        {
            Dao.Delete(entity);
        }

        //public IQueryFluent<TEntity,TPK> Query() { return Dao.Query(); }

        //public virtual IQueryFluent<TEntity> Query(IQueryObject<TEntity> queryObject) { return Dao.Query(queryObject); }

        //public virtual IQueryFluent<TEntity> Query(Expression<Func<TEntity, bool>> query) { return Dao.Query(query); }

        //public virtual async Task<TEntity> FindAsync(params object[] keyValues) { return await Dao.FindAsync(keyValues); }

        //public virtual async Task<TEntity> FindAsync(CancellationToken cancellationToken, params object[] keyValues) { return await Dao.FindAsync(cancellationToken, keyValues); }

        //public virtual async Task<bool> DeleteAsync(params object[] keyValues) { return await DeleteAsync(CancellationToken.None, keyValues); }

        //IF 04/08/2014 - Before: return await DeleteAsync(cancellationToken, keyValues);

        //public virtual async Task<bool> DeleteAsync(CancellationToken cancellationToken, params object[] keyValues) { return await Dao.DeleteAsync(cancellationToken, keyValues); }

        //public IQueryable<TEntity> Queryable() { return Dao.Queryable(); }

        //public IQueryable<TEntity> StateLessQueryable() { return Dao.StateLessQueryable(); }

    }
}