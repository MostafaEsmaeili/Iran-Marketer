using System;
using System.Linq.Expressions;

namespace Bargozideh.Framework.Repository.FluentQuery
{
    public interface IQueryObject<TEntity,TPK>
    {
        Expression<Func<TEntity, bool>> Query();
        Expression<Func<TEntity, bool>> And(Expression<Func<TEntity, bool>> query);
        Expression<Func<TEntity, bool>> Or(Expression<Func<TEntity, bool>> query);
        Expression<Func<TEntity, bool>> And(IQueryObject<TEntity,TPK> queryObject);
        Expression<Func<TEntity, bool>> Or(IQueryObject<TEntity,TPK> queryObject);
    }
}