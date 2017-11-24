using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Bargozideh.Framework.Repository.Command;
using Bargozideh.Framework.Repository.Extensions;
using Bargozideh.Framework.Repository.Mapper;
using Bargozideh.Framework.UnitOfWork;
using Dapper;

namespace Bargozideh.Framework.Repository
{
    public abstract partial class Repository<TEntity, TPk>
        where TEntity : class
        where TPk : IComparable
    {
        //public virtual TEntity Find(params object[] keyValues)
        //{
        //    return _DataContext.Set<TEntity>().Find(keyValues);
        //}
     
        public virtual TEntity GetKey(TPk key, ISession session)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return session.QuerySingleOrDefault<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(session.SqlDialect)} WHERE Id = @Id",
                    new { Id = key });
            }
            var entity = CreateEntityAndSetKeyValue(key);
            return session.Get(entity);
        }

        public virtual TEntity GetKey(TPk key)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return Session.QuerySingleOrDefault<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(Session.SqlDialect)} WHERE Id = @Id",
                    new { Id = key });
            }
            var entity = CreateEntityAndSetKeyValue(key);
            return Session.Get(entity);
        }

        public virtual TEntity GetKey<TSesssion>(TPk key) where TSesssion : class, ISession
        {
            using (var session = Factory.Create<TSesssion>())
            {
                return GetKey(key, session);
            }
        }
        public IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>> predicate)
        {
            var result = GetDynamicQuery(predicate);
            return Session.Query<TEntity>(result.Sql, (object) result.Param);

        }
        public virtual TEntity GetKey(TPk key, IUnitOfWork uow)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return uow.Connection.QuerySingleOrDefault<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(uow.SqlDialect)} WHERE Id = @Id",
                    new { Id = key }, uow.Transaction);
            }
            var entity = CreateEntityAndSetKeyValue(key);
            return uow.Get(entity);
        }

        public virtual Task<TEntity> GetKeyAsync(TPk key, ISession session)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return session.QuerySingleOrDefaultAsync<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(session.SqlDialect)} WHERE Id = @Id",
                    new { Id = key });
            }
            var entity = CreateEntityAndSetKeyValue(key);
            return GetAsync(entity, session);
        }

        public virtual Task<TEntity> GetKeyAsync<TSesssion>(TPk key) where TSesssion : class, ISession
        {
            using (var session = Factory.Create<TSesssion>())
            {
                return GetKeyAsync(key, session);
            }
        }


        public virtual Task<TEntity> GetKeyAsync(TPk key, IUnitOfWork uow)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return uow.Connection.QuerySingleOrDefaultAsync<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(uow.SqlDialect)} WHERE Id = @Id",
                    new { Id = key }, uow.Transaction);
            }
            var entity = CreateEntityAndSetKeyValue(key);
            return uow.GetAsync(entity);
        }

        public virtual TEntity Get(TEntity entity, ISession session)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return session.QuerySingleOrDefault<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(session.SqlDialect)} WHERE Id = @Id",
                    new { ((IEntity<TPk>)entity).Id });
            }
            return session.Get(entity);
        }

        public TEntity Get(TEntity entity)
        {
            try
            {
                if (_container.IsIEntity<TEntity, TPk>())
                {
                    SetConnectionString();
                    return Session.QuerySingleOrDefault<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(Session.SqlDialect)} WHERE Id = @Id",
                        new { ((IEntity<TPk>)entity).Id });
                }
                return Session.Get(entity);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual TEntity Get(CustomCommand command, IRowMapper<TEntity> rowMapper)
        {
            try
            {
                return GetAll(command, rowMapper).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public virtual TEntity Get<TSesssion>(TEntity entity) where TSesssion : class, ISession
        {
            using (var session = Factory.Create<TSesssion>())
            {
                return Get(entity, session);
            }
        }

        public virtual TEntity Get(TEntity entity, IUnitOfWork uow)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return uow.Connection.QuerySingleOrDefault<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(uow.SqlDialect)} WHERE Id = @Id",
                    new { ((IEntity<TPk>)entity).Id }, uow.Transaction);
            }
            return uow.Get(entity);
        }

        public virtual Task<TEntity> GetAsync(TEntity entity, ISession session)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return session.QuerySingleOrDefaultAsync<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(session.SqlDialect)} WHERE Id = @Id",
                    new { ((IEntity<TPk>)entity).Id });
            }
            return session.GetAsync(entity);
        }

        public virtual Task<TEntity> GetAsync(TEntity entity, IUnitOfWork uow)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                return uow.Connection.QuerySingleOrDefaultAsync<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(uow.SqlDialect)} WHERE Id = @Id",
                    new { ((IEntity<TPk>)entity).Id }, uow.Transaction);
            }
            return uow.GetAsync(entity);
        }

        public virtual Task<TEntity> GetAsync<TSesssion>(TEntity entity) where TSesssion : class, ISession
        {
            using (var session = Factory.Create<TSesssion>())
            {
                return GetAsync(entity, session);
            }
        }

    }
}
