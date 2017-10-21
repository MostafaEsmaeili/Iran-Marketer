using System.Data.SqlClient;
using Pikad.Framework.UnitOfWork;

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
        }
    }
}
