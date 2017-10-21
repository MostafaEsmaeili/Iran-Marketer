using System.Configuration;
using System.Data.SqlClient;
using Pikad.Framework.UnitOfWork;
using Pikad.Framework.UnitOfWork.Helpers;
using IranMarketer.Common.Database;


namespace IranMarketer.Common.Session
{

    public class IranMarketerSession : Session<SqlConnection>, ISession
    {
        public IranMarketerSession(IDbFactory session, IIranMarketerDatabase settings)
            : base(session, settings.ConnectionString)
        {
            ConnectionStringHelper.DefaultConnectionStringName = settings.ConnectionString;
        }
    }
}
