using System;
using System.Linq.Expressions;

namespace Pikad.Framework.Repository.FluentQuery
{
    public abstract class QueryObject<TEntity,TPK> : IQueryObject<TEntity,TPK>
       where TEntity : class
        where TPK : IComparable

    {
        private Expression<Func<TEntity, bool>> _query;

        public virtual Expression<Func<TEntity, bool>> Query()
        {
            return _query;
        }

        public Expression<Func<TEntity, bool>> And(Expression<Func<TEntity, bool>> query)
        {
            //return _query = _query == null ? query : _query.And(query.Expand());
            return null;
        }

        public Expression<Func<TEntity, bool>> Or(Expression<Func<TEntity, bool>> query)
        {
            //return _query = _query == null ? query : _query.Or(query.Expand());
            return null;
        }


        public Expression<Func<TEntity, bool>> And(IQueryObject<TEntity,TPK> queryObject)
        {
            return And(queryObject.Query());
        }

        public Expression<Func<TEntity, bool>> Or(IQueryObject<TEntity,TPK> queryObject)
        {
            return Or(queryObject.Query());
        }
    }
}