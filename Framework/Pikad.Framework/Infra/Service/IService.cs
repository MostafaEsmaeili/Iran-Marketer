using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Bargozideh.Framework.UnitOfWork;

namespace Bargozideh.Framework.Infra.Service
{
    public interface IService<TEntity, TPk>
        where TEntity : class
        where TPk : IComparable
    {
        //TEntity Find(params object[] keyValues);
        TEntity Get(TEntity entity);

        IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>> predicate); 
            TEntity GetKey(TPk key);
        IEnumerable<TEntity> GetAll();
        int GetCount();

        //IQueryable<TEntity> SelectQuery(string query, params object[] parameters);
        //int Save(TEntity entity, SqlMapper.IDynamicParameters parameters);
        //int Save(TEntity entity);
        //Task<int> SaveAsync(TEntity entity);
        TPk SaveOrUpdate(TEntity entity);
        TPk Save(TEntity entity);
        TPk Save(TEntity entity,IUnitOfWork unitOfWork);
        TPk SaveOrUpdate(TEntity entity,IUnitOfWork unitOfWork);

        //void Save(IEnumerable<TEntity> entities);
        //int Update(TEntity entity);
        //Task<int> UpdateAsync(TEntity entity);
        //void Delete(int id);
        void Delete(TEntity entity);
        Task<bool> DeleteKeyAsync(TPk key);
        //IQueryFluent<TEntity> Query();
        //IQueryFluent<TEntity> Query(IQueryObject<TEntity> queryObject);
        //IQueryFluent<TEntity> Query(Expression<Func<TEntity, bool>> query);
        //Task<TEntity> FindAsync(params object[] keyValues);
        //Task<TEntity> FindAsync(CancellationToken cancellationToken, params object[] keyValues);
        //Task<bool> DeleteAsync(params object[] keyValues);
        //Task<bool> DeleteAsync(CancellationToken cancellationToken, params object[] keyValues);
        //IQueryable<TEntity> Queryable();
        //IQueryable<TEntity> StateLessQueryable();

    }
}