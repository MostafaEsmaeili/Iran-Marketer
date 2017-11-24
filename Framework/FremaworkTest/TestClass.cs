using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bargozideh.Framework.Infra.IoC;
using Bargozideh.Framework.UnitOfWork;
using Castle.Core.Internal;
using Castle.Facilities.AutoTx;
using Castle.MicroKernel.Registration;
using Castle.Transactions;
using Castle.Windsor;
using Dapper;
using Test.Dao;
using Test.Domain;


namespace FremaworkTest
{
    public class TestClass
    {

        //[Transaction(IsolationLevel = IsolationLevel.Serializable)]
        public static void Test()
        {

            var repo = CoreContainer.Container.Resolve<INewRepository>();
            var wrepo = CoreContainer.Container.Resolve<IWorldRepository>();
            var testsession = CoreContainer.Container.Resolve<ISession>();

            var lsyt = wrepo.GetAll();
            var www = wrepo.Get(new World() { Guid = "1" });

           
            var wo = new World { Guid = "Salam Amo!" };
            //var res = wrepo.SaveOrUpdate(wo);

            var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
            using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
            {
                var res = wrepo.SaveOrUpdate(wo, uow);
            }

            //try
            //{

            //    var wo = new World { Guid = "Salam" };
            //    var res = wrepo.SaveOrUpdate<ITestSession>(wo);
            //    var news = new News() { WorldId = 1, World = new World() { Guid = "Salam" } };
            //    repo.SaveOrUpdate<ITestSession>(news);
            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}

            //var dbFactory = _container.Resolve<IDbFactory>();
            //using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
            //{
            //    try
            //    {
            //        var wo = new World();
            //        wo.Guid = "Salam";
            //        var p = new DynamicParameters();
            //        p.Add("guid", wo.Guid, DbType.String);
            //        wrepo.Save(wo, uow, p);

            //        var news = new News() { WorldId = 1, World = new World() { Guid = "Salam" } };
            //        p = new DynamicParameters();
            //        p.Add("WorldId", news.WorldId, DbType.Date);
            //        repo.Save(news,uow,p);
            //    }
            //    catch (Exception ex)
            //    {
            //        uow.Rollback();
            //        throw;
            //    }

            //}
            //var dbFactory = _container.Resolve<IDbFactory>();
            //var session = dbFactory.Create<ITestSession>();

            //repo.SaveOrUpdate<ISession>(news);
            int a = 0;
        }

        public static void Test2()
        {

            var repo = CoreContainer.Container.Resolve<INewRepository>();
            var wrepo = CoreContainer.Container.Resolve<IWorldRepository>();
            //var testsession = CoreContainer.Container.Resolve<ISession>();

            //var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
            //using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
            //{
            //    var res = wrepo.SaveOrUpdate(wo, uow);
            //}

            //try
            //{

            //    var wo = new World { Guid = "Salam" };
            //    var res = wrepo.SaveOrUpdate<ITestSession>(wo);
            //    var news = new News() { WorldId = 1, World = new World() { Guid = "Salam" } };
            //    repo.SaveOrUpdate<ITestSession>(news);
            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}

            var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
            using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
            {
                try
                {
                    var wo = new World();
                    wo.Guid = "Salam";
                    var p = new DynamicParameters();
                    p.Add("guid", wo.Guid, DbType.String);
                    //wrepo.Save(wo, uow, p);

                    var news = new News() { WorldId = 1, World = new World() { Guid = "Salam" } };
                    p = new DynamicParameters();
                    p.Add("WorldId", news.WorldId, DbType.Date);
                    //repo.Save(news, uow, p);
                }
                catch (Exception ex)
                {
                    uow.Rollback();
                    throw ex;
                }

            }
            //var dbFactory = _container.Resolve<IDbFactory>();
            //var session = dbFactory.Create<ITestSession>();

            //repo.SaveOrUpdate<ISession>(news);
            int a = 0;
        }


        public static void TestBulk()
        {
            try
            {
                var worlds = new List<World>
                {
                    new World() {Guid = "1"},
                    new World() {Guid = "2"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "8"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "5"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "1"},
                    new World() {Guid = "5"},


                };

                var testsession = CoreContainer.Container.Resolve<ISession>();
                var transactionDataTable = GetNewsDataTable(worlds);
                var bulkCopy = GetNewsSqlBulkCopy((SqlConnection)testsession.Connection);
                using (testsession.Connection)
                {
                    bulkCopy.WriteToServer(transactionDataTable);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private static SqlBulkCopy GetNewsSqlBulkCopy(SqlConnection connection)
        {
            try
            {
                var bulkCopy = new SqlBulkCopy(connection);
                bulkCopy.ColumnMappings.Add("Guid", "Guid");
                bulkCopy.BatchSize = 2000;
                bulkCopy.DestinationTableName = "Worlds";
                return bulkCopy;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private static DataTable GetNewsDataTable(List<World> worlds)
        {
            var table = new DataTable();

            table.Columns.Add("Guid");
            foreach (var w in worlds)
            {
                var row = table.NewRow();
                row["Guid"] = w.Guid;
                table.Rows.Add(row);
            }
            return table;
        }
    }
}
