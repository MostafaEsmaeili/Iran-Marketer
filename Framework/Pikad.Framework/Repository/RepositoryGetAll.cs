using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Threading;
using System.Threading.Tasks;
using Dapper;
using  Dapper.FastCrud
using Dapper.FastCrud.Configuration.StatementOptions.Builders;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.Repository.Extensions;
using Pikad.Framework.Repository.FluentQuery;
using Pikad.Framework.Repository.Mapper;
using Pikad.Framework.Repository.Pagination;
using Pikad.Framework.UnitOfWork;
using Pikad.Framework.UnitOfWork.Helpers;

namespace Pikad.Framework.Repository
{
    public abstract partial class Repository<TEntity, TPk>
        where TEntity : class
        where TPk : IComparable
    {

        private IResultSetMapper<TEntity> resultSetMapper;

        public virtual IEnumerable<TEntity> GetAll(ISession session)
        {
            try
            {
                return _container.IsIEntity<TEntity, TPk>() ?
               session.Query<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(session.SqlDialect)}")
               : session.Find<TEntity>();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        public virtual IEnumerable<TEntity> GetAll()
        {
            try
            {
                SetConnectionString();
                return _container.IsIEntity<TEntity, TPk>() ?
               Session.Query<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(Session.SqlDialect)}")
               : Session.Find<TEntity>();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual IEnumerable<TEntity> GetAll(CustomCommand command, IRowMapper<TEntity> rowMapper)
        {
            SetConnectionString();
            this.resultSetMapper = new DefaultResultSetMapper(rowMapper);
            using (var reader = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType)))
            {
                foreach (TEntity result in this.resultSetMapper.MapSet(reader))
                    yield return result;
            }
        }

        public virtual PageCollection<TEntity> GetPageCollection(CustomCommand command, IRowMapper<TEntity> rowMapper)
        {
            try
            {
                SetConnectionString();
                var pagedCollection = new PageCollection<TEntity>();
                //this.resultSetMapper = new DefaultResultSetMapper(rowMapper);
                using (var reader = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType)))
                {
                    pagedCollection.ResultList = new List<TEntity>();

                    while (reader.Read())
                        pagedCollection.ResultList.Add(rowMapper.MapRow(reader));

                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalRecords = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumOne = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumTwo = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumThree = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumFour = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.CurrentPageNumber = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.PageSize = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                }
                return pagedCollection;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual PageCollection<TEntity> GetPageCollectionWithCustomQuery(CustomCommand command, IRowMapper<TEntity> rowMapper)
        {
            try
            {
                SetConnectionString();
                var pagedCollection = new PageCollection<TEntity>();
                //this.resultSetMapper = new DefaultResultSetMapper(rowMapper);
                using (var reader = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType)))
                {
                    pagedCollection.ResultList = new List<TEntity>();

                    while (reader.Read())
                        pagedCollection.ResultList.Add(rowMapper.MapRow(reader));

                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.CustomValue = reader.SafeReader(reader.GetName(0));
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalRecords = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumOne = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumTwo = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumThree = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumFour = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.CurrentPageNumber = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.PageSize = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                }
                return pagedCollection;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void SetConnectionString()
        {
            if (Session.Connection.State == ConnectionState.Closed)
            {
                if (string.IsNullOrEmpty(Session.Connection?.ConnectionString))
                {
                    Session.Connection.ConnectionString =
                        CreateInstanceHelper.Resolve<SqlConnection>(ConnectionStringHelper.DefaultConnectionStringName)
                            .ConnectionString;
                }
                Session.Connection?.Open();
            }
        }

        public virtual PageCollection<T> GetPageCollection<T>(CustomCommand command, IRowMapper<T> rowMapper) where T : class
        {
            try
            {
                SetConnectionString();
                var pagedCollection = new PageCollection<T>();
                //this.resultSetMapper = new DefaultResultSetMapperDTO<T>(rowMapper);
                using (var reader = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType)))
                {
                    pagedCollection.ResultList = new List<T>();

                    while (reader.Read())
                        pagedCollection.ResultList.Add(rowMapper.MapRow(reader));

                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalRecords = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumOne = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumTwo = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumThree = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.TotalSumFour = reader.SafeReader(reader.GetName(0)).SafeDecimal();
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.CurrentPageNumber = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                    if (reader.NextResult() && reader.Read())
                    {
                        pagedCollection.PageSize = reader.SafeReader(reader.GetName(0)).SafeLong(0);
                    }
                }
                return pagedCollection;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual IEnumerable<TEntity> GetAll(IUnitOfWork uow)
        {
            return _container.IsIEntity<TEntity, TPk>() ?
                uow.Connection.Query<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(uow.SqlDialect)}", transaction: uow.Transaction)
                : uow.Find<TEntity>();
        }

        public virtual IEnumerable<TEntity> GetAll<TSesssion>() where TSesssion : class, ISession
        {
            using (var session = Factory.Create<TSesssion>())
            {
                return GetAll(session);
            }
        }

        public virtual Task<IEnumerable<TEntity>> GetAllAsync(ISession session)
        {
            return _container.IsIEntity<TEntity, TPk>() ?
                session.QueryAsync<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(session.SqlDialect)}")
                : session.FindAsync<TEntity>();
        }

        public virtual Task<IEnumerable<TEntity>> GetAllAsync(IUnitOfWork uow)
        {
            return _container.IsIEntity<TEntity, TPk>() ?
                uow.Connection.QueryAsync<TEntity>($"SELECT * FROM {Sql.Table<TEntity>(uow.SqlDialect)}", transaction: uow.Transaction)
                : uow.FindAsync<TEntity>();
        }

        public virtual Task<IEnumerable<TEntity>> GetAllAsync<TSesssion>() where TSesssion : class, ISession
        {
            using (var session = Factory.Create<TSesssion>())
            {
                return GetAllAsync(session);
            }
        }

        //public virtual IQueryable<TEntity> SelectQuery(string query, params object[] parameters)
        //{
        //    return _DataContext.Set<TEntity>().SqlQuery(query, parameters).AsQueryable();
        //}

        //public IQueryFluent<TEntity, TPk> Query()
        //{
        //    return new QueryFluent<TEntity, TPk>(this);
        //}

        //public virtual IQueryFluent<TEntity, TPk> Query(IQueryObject<TEntity, TPk> queryObject)
        //{
        //    return new QueryFluent<TEntity, TPk>(this, queryObject);
        //}

        //public virtual IQueryFluent<TEntity, TPk> Query(Expression<Func<TEntity, bool>> query)
        //{
        //    return new QueryFluent<TEntity, TPk>(this, query);
        //}

        //public IQueryable<TEntity> Queryable()
        //{
        //    return _DataContext.Set<TEntity>();
        //}

        //public IQueryable<TEntity> StateLessQueryable()
        //{
        //    return _DataContext.Set<TEntity>().AsNoTracking();
        //}

        //public IRepository<T> GetRepository<T>() where T : class
        //{
        //    //return _unitOfWork.Repository<T>();
        //}

        //public virtual async Task<TEntity> FindAsync(params object[] keyValues)
        //{
        //    return await _DataContext.Set<TEntity>().FindAsync(keyValues);
        //}

        //public virtual async Task<TEntity> FindAsync(CancellationToken cancellationToken, params object[] keyValues)
        //{
        //    return await _DataContext.Set<TEntity>().FindAsync(cancellationToken, keyValues);
        //}
    }
}
