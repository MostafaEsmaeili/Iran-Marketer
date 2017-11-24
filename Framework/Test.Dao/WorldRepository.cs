using System;
using System.Collections.Generic;
using System.Data;
using Bargozideh.Framework.Repository;
using Bargozideh.Framework.Repository.Command;
using Bargozideh.Framework.UnitOfWork;
using Dapper;
using Test.Domain;

namespace Test.Dao
{
    public interface IWorldRepository : IRepository<World, int>
    {
        int SaveWorld(World world, IUnitOfWork unitOfWork);
    }

    public class WorldRepository : Repository<World, int>, IWorldRepository
    {
        public WorldRepository(IDbFactory factory) : base(factory)
        {
            
        }

    

        //public override int SaveOrUpdate(News entity, IUnitOfWork uow)
        //{
        //    return uow.Connection.Execute(new CommandDefinition("", entity.Key));
        //}

        //public override int SaveOrUpdate<TSesssion>(World entity)
        //{
        //    using (var uow = Factory.Create<IUnitOfWork, TSesssion>())
        //    {
        //        try
        //        {
        //            var p = new DynamicParameters();
        //            p.Add("guid", entity.Guid, DbType.String);
        //            return uow.Connection.Execute("SaveWorld", p, uow.Transaction, commandType: CommandType.StoredProcedure);

        //            //p = new DynamicParameters();
        //            //p.Add("WorldId", entity.WorldId, DbType.Date);
        //            //return uow.Connection.Execute("SaveNews", p, uow.Transaction, commandType: CommandType.StoredProcedure);
        //        }
        //        catch (Exception ex)
        //        {
        //            uow.Rollback();
        //            throw ex;
        //        }
        //    }
        //}
        public int SaveWorld(World world, IUnitOfWork unitOfWork)
        {
            try
            {
                var p = new DynamicParameters();
                p.Add("guid", world.Guid, DbType.String);
                return Save(new CustomCommand()
                {
                    Parameters = p,
                    SqlCommand = "SaveWorld",
                    CommandType = CommandType.StoredProcedure
                }, unitOfWork);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
