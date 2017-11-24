using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Bargozideh.Framework.UnitOfWork;

namespace Bargozideh.Framework.Infra.Provider
{
    public abstract  class  Provider<TEntity,TPk> where TPk : IComparable where TEntity : class 
    {
        public abstract TEntity Get(TEntity entity);


        public abstract IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>> predicate);


        public abstract TEntity GetKey(TPk key);

        public abstract IEnumerable<TEntity> GetAll();



        public abstract TPk SaveOrUpdate(TEntity entity);



        public abstract TPk Save(TEntity entity, IUnitOfWork unitOfWork);



        public abstract TPk SaveOrUpdate(TEntity entity, IUnitOfWork unitOfWork);


        public abstract Task<bool> DeleteKeyAsync(TPk key);

        public abstract void Delete(TEntity entity);

    }
}