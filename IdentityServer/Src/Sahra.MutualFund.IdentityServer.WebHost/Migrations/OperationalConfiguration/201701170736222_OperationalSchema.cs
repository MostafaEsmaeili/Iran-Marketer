using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.OperationalConfiguration
{
    public partial class OperationalSchema : DbMigration
    {
        public override void Up()
        {
            MoveTable(name: "dbo.Consents", newSchema: "sec");
            MoveTable(name: "dbo.Tokens", newSchema: "sec");
        }
        
        public override void Down()
        {
            MoveTable(name: "sec.Tokens", newSchema: "dbo");
            MoveTable(name: "sec.Consents", newSchema: "dbo");
        }
    }
}
