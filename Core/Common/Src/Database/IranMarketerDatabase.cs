using System.Configuration;

namespace IranMarketer.Common.Database
{
    public class IranMarketerDatabase : IIranMarketerDatabase
    {
        public string ConnectionString { get; } = ConfigurationManager.ConnectionStrings["MutualFund"].ConnectionString;

        //public MutualFundDatabase()
        //{
        //    ConnectionString = ConfigurationManager.AppSettings[ConnectionStringName];
        //}

        //public string ConnectionStringName { get; set; } = "MutualFund";

    }
}
