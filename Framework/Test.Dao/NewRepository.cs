using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Bargozideh.Framework.Infra.IoC;
using Bargozideh.Framework.Repository;
using Bargozideh.Framework.Repository.Command;
using Bargozideh.Framework.UnitOfWork;
using Dapper;
using Dapper.FastCrud;
using Test.Domain;

namespace Test.Dao
{
    public interface INewRepository : IRepository<News, int>
    {
        News GetNewsById(int key);

        int SaveNews(News news , IUnitOfWork unitOfWork);

        bool CheckIsOk(int key);
        News GetByWorldId(News entity);
    }

    public class NewRepository : Repository<News, int>, INewRepository
    {
        public NewsRowMapper NewsRowMapper { get; set; }
        public NewRepository(IDbFactory factory) : base(factory)
        {
        }

        public News GetByWorldId(News entity)
        {
            return Session.Connection.Find<News>(s => s.Where($"{nameof(entity.WorldId):C}=@Parameter")
                                                          .WithParameters(new { Parameter = entity.WorldId }))
                                                          .FirstOrDefault();
        }


        public News GetNewsById(int key)
        {
            var p = new DynamicParameters();
            p.Add("key", key, DbType.Int32);
            return Get(new CustomCommand()
            {
                Parameters = p,
                SqlCommand = "GetNewsById",
                CommandType = CommandType.StoredProcedure
            }, NewsRowMapper);
        }

        public int SaveNews(News news , IUnitOfWork unitOfWork)
        {
            try
            {
                var p = new DynamicParameters();
                p.Add("WorldId", news.WorldId, DbType.Int32);
                return Save(new CustomCommand()
                {
                    Parameters = p,
                    SqlCommand = "SaveNews",
                    CommandType = CommandType.StoredProcedure
                },unitOfWork);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public bool CheckIsOk(int key)
        {
            var p = new DynamicParameters();
            p.Add("key", key, DbType.Int32);

            var connection = CoreContainer.Container.Resolve<ISession>();
            return connection.Query<bool>("CheckIsOk", p, commandType: CommandType.StoredProcedure).FirstOrDefault();
        }

        public override IEnumerable<News> GetAll()
        {
            var connection = CoreContainer.Container.Resolve<ISession>();
            var eex = connection.Query<News, World, News>("GetAllNews", (news, world) =>
            {
                news.World = world;
                return news;
            }, commandType: CommandType.StoredProcedure, splitOn: "WorldId");
            return eex;
        }
        //public override int SaveOrUpdate(News entity, IUnitOfWork uow)
        //{
        //    var p = new DynamicParameters();
        //    p.Add("WorldId", entity.WorldId, DbType.Date);
        //    return uow.Connection.Execute(new CommandDefinition("",p,uow.Transaction, commandType: CommandType.StoredProcedure));
        //}

        //public override int SaveOrUpdate<TSesssion>(News entity)
        //{
        //    using (var uow = Factory.Create<IUnitOfWork, TSesssion>())
        //    {
        //        try
        //        {
        //            var pp = new DynamicParameters(entity);


        //            var p = new DynamicParameters();
        //            p.Add("guid", entity.World.Guid, DbType.String);
        //            uow.Connection.Execute("SaveWorld", p, uow.Transaction, commandType: CommandType.StoredProcedure);

        //            p = new DynamicParameters();
        //            p.Add("WorldId", entity.WorldId, DbType.Date);
        //            return uow.Connection.Execute("SaveNews", p, uow.Transaction, commandType: CommandType.StoredProcedure);
        //        }
        //        catch (Exception ex)
        //        {
        //            uow.Rollback();
        //            throw ex;
        //        }
        //    }
        //}
    }
}
