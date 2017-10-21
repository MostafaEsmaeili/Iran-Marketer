using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using Pikad.Framework.Repository.Containers;
using Pikad.Framework.Repository.Exceptions;
using Pikad.Framework.Repository.Helpers;
using Pikad.Framework.Repository.Mapper;
using Pikad.Framework.UnitOfWork;
using Pikad.Framework.UnitOfWork.Helpers;

namespace Pikad.Framework.Repository
{
    public abstract partial class Repository<TEntity, TPk> : RepositoryBase, IRepository<TEntity, TPk>
        where TEntity : class
        where TPk : IComparable
    {
        private readonly RepositoryContainer _container = RepositoryContainer.Instance;
        private readonly SqlDialectHelper _helper;


        protected SqlInstance Sql { get; } = SqlInstance.Instance;

        protected Repository(IDbFactory factory) : base(factory)
        {
            _helper = new SqlDialectHelper();
        }

        protected bool TryAllKeysDefault(TEntity entity)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                var entityInterface = entity as IEntity<TPk>;
                if (entityInterface != null)
                {
                    return entityInterface.Id.CompareTo(default(TPk)) == 0;
                }
            }

            var keys = _container.GetKeys<TEntity>();
            var properies = _container.GetProperties<TEntity>(keys);
            if (keys == null || properies == null)
            {
                throw new NoPkException(
                    "There is no keys for this entity, please create your logic or add a key attribute to the entity");
            }
            return properies.Select(property => property.GetValue(entity))
                .All(value => value == null ||  value.Equals(default(TPk)));
        }

        protected TPk GetPrimaryKeyValue(TEntity entity)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                var entityInterface = entity as IEntity<TPk>;
                if (entityInterface != null)
                {
                    return entityInterface.Id;
                }
            }
            var primarKeyValue = GetPrimaryKeyPropertyInfo();
            return (TPk) primarKeyValue.GetValue(entity);
        }
        protected void SetPrimaryKeyValue(TEntity entity, TPk value)
        {
            if (_container.IsIEntity<TEntity, TPk>())
            {
                var entityInterface = entity as IEntity<TPk>;
                if (entityInterface != null)
                {
                    entityInterface.Id = value;
                    return;
                }
            }
            var primarKeyValue = GetPrimaryKeyPropertyInfo();
            primarKeyValue.SetValue(entity, value);
        }

        private PropertyInfo GetPrimaryKeyPropertyInfo()
        {
            var keys = _container.GetKeys<TEntity>();
            var primarKeyName = keys.FirstOrDefault(key => key.IsPrimaryKey)?.PropertyName;
            var properies = _container.GetProperties<TEntity>(keys);
            if (keys == null || primarKeyName == null || properies == null)
            {
                throw new NoPkException(
                    "There is no primary ket for this entity, please create your logic or add a key attribute to the entity");
            }
            var primarKeyValue =
                properies.FirstOrDefault(property => property.Name.Equals(primarKeyName, StringComparison.Ordinal));
            return primarKeyValue;
        }

        protected TEntity CreateEntityAndSetKeyValue(TPk key)
        {
            var entity = CreateInstanceHelper.Resolve<TEntity>();
            SetPrimaryKeyValue(entity, key);
            return entity;
        }

        protected void SetDialogueOnce<T>(IUnitOfWork uow) where T : class
        {
            _helper.SetDialogueIfNeeded<T>(uow.SqlDialect);
        }

        protected void SetDialogueOnce<T>(ISession session) where T : class
        {
            _helper.SetDialogueIfNeeded<T>(session.SqlDialect);
        }

        protected class DefaultResultSetMapper : IResultSetMapper<TEntity>
        {
            private readonly IRowMapper<TEntity> rowMapper;

            public DefaultResultSetMapper(IRowMapper<TEntity> rowMapper)
            {
                this.rowMapper = rowMapper;
            }

            public IEnumerable<TEntity> MapSet(IDataReader reader)
            {
                using (reader)
                {
                    while (reader.Read())
                        yield return this.rowMapper.MapRow((IDataRecord)reader);
                }
            }
        }

        protected class DefaultResultSetMapperDTO<T> : IResultSetMapper<T>
        {
            private readonly IRowMapper<T> rowMapper;

            public DefaultResultSetMapperDTO(IRowMapper<T> rowMapper)
            {
                this.rowMapper = rowMapper;
            }

            public IEnumerable<T> MapSet(IDataReader reader)
            {
                using (reader)
                {
                    while (reader.Read())
                        yield return this.rowMapper.MapRow((IDataRecord)reader);
                }
            }
        }


    }
}
