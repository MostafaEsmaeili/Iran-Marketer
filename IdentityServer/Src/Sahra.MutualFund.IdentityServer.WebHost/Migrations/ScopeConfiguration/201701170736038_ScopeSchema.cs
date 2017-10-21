using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.ScopeConfiguration
{
    public partial class ScopeSchema : DbMigration
    {
        public override void Up()
        {
            MoveTable(name: "dbo.Scopes", newSchema: "sec");
            MoveTable(name: "dbo.ScopeClaims", newSchema: "sec");
            MoveTable(name: "dbo.ScopeSecrets", newSchema: "sec");
        }
        
        public override void Down()
        {
            MoveTable(name: "sec.ScopeSecrets", newSchema: "dbo");
            MoveTable(name: "sec.ScopeClaims", newSchema: "dbo");
            MoveTable(name: "sec.Scopes", newSchema: "dbo");
        }
    }
}
