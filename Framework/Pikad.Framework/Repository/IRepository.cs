using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading;
using System.Threading.Tasks;
using Dapper;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.Repository.FluentQuery;
using Pikad.Framework.Repository.Mapper;
using Pikad.Framework.Repository.Pagination;
using Pikad.Framework.UnitOfWork;

namespace Pikad.Framework.Repository
{
    public interface IRepository<TEntity, TPk> : IRepositoryBacic<TEntity>
        where TEntity : class
        where TPk : IComparable
    {
        void SaveBatch(List<TEntity> list, IUnitOfWork uow, string sqlCommand, string parametereName,
            string parameterType);

        int Count(ISession session);
        int Count(IUnitOfWork uow);
        int Count<TSesssion>() where TSesssion : class, ISession;
        int Count();
        Task<int> CountAsync(ISession session);
        Task<int> CountAsync(IUnitOfWork uow);
        Task<int> CountAsync<TSesssion>() where TSesssion : class, ISession;
        bool DeleteKey(TPk key, ISession session);
        bool DeleteKey(TPk key, IUnitOfWork uow);
        bool DeleteKey<TSesssion>(TPk key) where TSesssion : class, ISession;
        Task<bool> DeleteKeyAsync(TPk key, ISession session);
        Task<bool> DeleteKeyAsync(TPk key);
        Task<bool> DeleteKeyAsync(TPk key, IUnitOfWork uow);
        Task<bool> DeleteKeyAsync<TSesssion>(TPk key) where TSesssion : class, ISession;
        bool Delete(TEntity entity, ISession session);
        bool Delete(TEntity entity, IUnitOfWork uow);
        bool Delete<TSesssion>(TEntity entity) where TSesssion : class, ISession;
        bool Delete(TEntity entity);
        Task<bool> DeleteAsync(TEntity entity, ISession session);
        Task<bool> DeleteAsync(TEntity entity, IUnitOfWork uow);
        Task<bool> DeleteAsync<TSesssion>(TEntity entity) where TSesssion : class, ISession;
        TEntity GetKey(TPk key, ISession session);
        TEntity GetKey(TPk key);
        TEntity GetKey(TPk key, IUnitOfWork uow);
        TEntity GetKey<TSesssion>(TPk key) where TSesssion : class, ISession;
        Task<TEntity> GetKeyAsync(TPk key, ISession session);
        Task<TEntity> GetKeyAsync(TPk key, IUnitOfWork uow);
        Task<TEntity> GetKeyAsync<TSesssion>(TPk key) where TSesssion : class, ISession;
        TEntity Get(TEntity entity, ISession session);
        TEntity Get(TEntity entity);
        IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>> predicate);
        TEntity Get(CustomCommand command, IRowMapper<TEntity> rowMapper);
        TEntity Get<TSesssion>(TEntity entity) where TSesssion : class, ISession;
        TEntity Get(TEntity entity, IUnitOfWork uow);
        Task<TEntity> GetAsync(TEntity entity, ISession session);
        Task<TEntity> GetAsync<TSesssion>(TEntity entity) where TSesssion : class, ISession;
        Task<TEntity> GetAsync(TEntity entity, IUnitOfWork uow);
        //TEntity Find(params object[] keyValues);
        //IQueryable<TEntity> SelectQuery(string query, params object[] parameters);
        //IQueryFluent<TEntity, TPk> Query(IQueryObject<TEntity, TPk> queryObject);
        //IQueryFluent<TEntity, TPk> Query(Expression<Func<TEntity, bool>> query);
        //IQueryFluent<TEntity, TPk> Query();
        //IQueryable<TEntity> Queryable();
        //IQueryable<TEntity> StateLessQueryable();
        IEnumerable<TEntity> GetAll(ISession session);
        IEnumerable<TEntity> GetAll();
        IEnumerable<TEntity> GetAll(CustomCommand command, IRowMapper<TEntity> rowMapper);
        PageCollection<TEntity> GetPageCollection(CustomCommand command, IRowMapper<TEntity> rowMapper);
        PageCollection<TEntity> GetPageCollectionWithCustomQuery(CustomCommand command, IRowMapper<TEntity> rowMapper);
        PageCollection<TDto> GetPageCollection<TDto>(CustomCommand command, IRowMapper<TDto> rowMapper) where TDto : class;
        IEnumerable<TEntity> GetAll(IUnitOfWork uow);
        IEnumerable<TEntity> GetAll<TSesssion>() where TSesssion : class, ISession;
        Task<IEnumerable<TEntity>> GetAllAsync(ISession session);
        Task<IEnumerable<TEntity>> GetAllAsync(IUnitOfWork uow);
        Task<IEnumerable<TEntity>> GetAllAsync<TSesssion>() where TSesssion : class, ISession;
        //Task<TEntity> FindAsync(params object[] keyValues);
        //Task<TEntity> FindAsync(CancellationToken cancellationToken, params object[] keyValues);
        TPk SaveOrUpdate(TEntity entity, IUnitOfWork uow);
        TPk SaveOrUpdate(TEntity entity);

        //int Save(TEntity entity, IUnitOfWork uow, SqlMapper.IDynamicParameters parameters);
        //int Save(TEntity entity, SqlMapper.IDynamicParameters parameters);
        //int Save(TEntity entity);
        TPk Save(CustomCommand command);
        void SaveOnly(CustomCommand command);
        TPk Save(TEntity entity);
        TPk Save(TEntity entity, IUnitOfWork uow);
        TPk Save(CustomCommand command, IUnitOfWork uow);
        void SaveOnly(CustomCommand command, IUnitOfWork uow);
        TPk Update(CustomCommand command);
        void UpdateOnly(CustomCommand command);
        TPk Update(CustomCommand command, IUnitOfWork uow);
        void UpdateOnly(CustomCommand command, IUnitOfWork uow);
        //int Update(TEntity entity);
        //Task<int> UpdateAsync(TEntity entity);
        TPk SaveOrUpdate<TSesssion>(TEntity entity) where TSesssion : class, ISession;
        Task<TPk> SaveOrUpdateAsync(TEntity entity, IUnitOfWork uow);
        Task<TPk> SaveOrUpdateAsync<TSesssion>(TEntity entity) where TSesssion : class, ISession;
    }
}