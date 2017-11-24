using System.Data.SqlClient;
using Bargozideh.Framework.UnitOfWork;
using Bargozideh.Framework.UnitOfWork.Helpers;

namespace FremaworkTest
{
    //public interface ITestSession : ISession
    //{
    //}

    public class TestSession : Session<SqlConnection>, ISession
    {
        public TestSession(IDbFactory session, IMyDatabaseSettings settings)
            : base(session, settings.ConnectionString)
        {
            ConnectionStringHelper.DefaultConnectionStringName = settings.ConnectionString;
        }

        
    }
}
