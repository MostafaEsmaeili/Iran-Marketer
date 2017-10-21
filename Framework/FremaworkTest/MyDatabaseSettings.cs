namespace FremaworkTest
{
    public class MyDatabaseSettings : IMyDatabaseSettings
    {
        //public string ConnectionString { get; } = $@"Data Source=MD-PC;Initial Catalog=Repo;Integrated Security=True;";
        public string ConnectionString { get; } = $@"Server=172.16.17.72;Database=Repo;User Id=Develop;Password=Develop!@#;";

    }
}
