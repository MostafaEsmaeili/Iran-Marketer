using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Castle.Transactions;
using Dapper;

using Pikad.Framework.Infra.IoC;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using Test.Dao;
using Test.Domain;
using Test.Service;

namespace FremaworkTest
{
    public class TestClass2
    {
        public void GetTest()
        {
            try
            {
                var wrepo = CoreContainer.Container.Resolve<INewRepository>();

                var wwww = CoreContainer.Container.Resolve<IWorldRepository>();

                //wwww.Save(new World() {Guid = "5555"});
                //Save 
                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        var ddf = wwww.SaveWorld(new World() { Guid = "Testdlds" }, uow);
                        var news = new News
                        {
                            WorldId = ddf
                        };
                        wrepo.SaveNews(news, uow);
                    }
                    catch (Exception e)
                    {
                        uow.Rollback();
                        throw e;
                    }
                }
                //var predicate = Predicates.Field<News>(f => f.WorldId, Operator.Eq,12);

                //get Key
                //var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                //using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                //{
                //    var withKey = wrepo.GetKey(1,uow);
                //}
                var withKey = wrepo.GetKey(1);

                var rree = wrepo.GetByWorldId(new News() { WorldId = 2 });

                //Paging
                var p = new DynamicParameters();
                p.Add("@PageSize", 10);
                p.Add("@PageNumber", 1);

                var page = wrepo.GetPageCollection(new CustomCommand()
                {
                    Parameters = p,
                    CommandType = CommandType.StoredProcedure,
                    SqlCommand = "GetNewsWithPage"
                }, new NewsRowMapper());

                //Custom Method
                var xxx = wrepo.GetNewsById(1);

                //Get with Sp
                var ppp = wrepo.GetAll(new CustomCommand()
                {
                    Parameters = null,
                    CommandType = CommandType.StoredProcedure,
                    SqlCommand = "GetAllNews"
                }, new NewsRowMapper());

                //Override Method
                var x = wrepo.GetAll().ToList();


                int a = 0;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //[Transaction]
        public void Test()
        {
            try
            {

                var wrepo = CoreContainer.Container.Resolve<IWorldService>();
                var wo = new World();
                wo.Guid = "Salam";
                var p = new DynamicParameters();
                p.Add("guid", wo.Guid, DbType.String);
                //wrepo.Save(wo, p);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //[Transaction]
        public void Test2()
        {
            try
            {
                var repo = CoreContainer.Container.Resolve<INewRepository>();
                var news = new News() { WorldId = 1, World = new World() { Guid = "Salam" } };
                var p = new DynamicParameters();
                p.Add("WorldId", news.WorldId, DbType.Date);
                //repo.Save(news, p);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //[Transaction]
        public void Test3()
        {
            try
            {
                Test();
                Test2();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
