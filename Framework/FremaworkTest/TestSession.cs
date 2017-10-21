using System.Data.SqlClient;
using Pikad.Framework.UnitOfWork;
using Pikad.Framework.UnitOfWork.Helpers;

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
