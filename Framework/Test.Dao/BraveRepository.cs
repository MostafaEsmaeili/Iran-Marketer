﻿using System.Collections.Generic;
using System.Data;
using Dapper;
using Dapper.FastCrud;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;
using Pikad.Framework.UnitOfWork.Helpers;

using Test.Domain;

namespace Test.Dao
{
    public interface IBraveRepository : IRepository<Brave, int>
    {
    }

    public class BraveRepository : Repository<Brave, int>, IBraveRepository
    {
        public BraveRepository(IDbFactory factory) : base(factory)
        {
        }

        public IEnumerable<Brave> GetAllJoins(ISession connection)
        {
            return connection.Find<Brave>(statement =>
            {
                statement.Include<News>(join => join.InnerJoin())
                .Include<World>(join => join.InnerJoin());
            });
        }

        public Brave GetWithJoins(int key, ISession connection)
        {
            var entity = CreateInstanceHelper.Resolve<Brave>();
            entity.Id = key;
         
            return connection.Get(entity, statement =>
            {
                statement.Include<News>(join => join.InnerJoin())
                .Include<World>(join => join.InnerJoin());
            });
        }
    }
}
