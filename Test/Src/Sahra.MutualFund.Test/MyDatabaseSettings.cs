using System.Configuration;

namespace FremaworkTest
{
    public class MyDatabaseSettings : IMyDatabaseSettings
    {
        //public string ConnectionString { get; } = $@"Data Source=194.225.37.72;Initial Catalog=Repo;Integrated Security=True;";
        //public string ConnectionString { get; } = @"Server=172.16.17.72;Database=MutualFund;User Id=Develop;Password=Develop!@#;";
        public string ConnectionString { get; } = ConfigurationManager.ConnectionStrings["MutualFund"].ConnectionString;
        
    }
}
