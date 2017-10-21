using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.ClientConfiguration
{
    public partial class ClientSchema : DbMigration
    {
        public override void Up()
        {
            MoveTable(name: "dbo.Clients", newSchema: "sec");
            MoveTable(name: "dbo.ClientCorsOrigins", newSchema: "sec");
            MoveTable(name: "dbo.ClientCustomGrantTypes", newSchema: "sec");
            MoveTable(name: "dbo.ClientScopes", newSchema: "sec");
            MoveTable(name: "dbo.ClientClaims", newSchema: "sec");
            MoveTable(name: "dbo.ClientSecrets", newSchema: "sec");
            MoveTable(name: "dbo.ClientIdPRestrictions", newSchema: "sec");
            MoveTable(name: "dbo.ClientPostLogoutRedirectUris", newSchema: "sec");
            MoveTable(name: "dbo.ClientRedirectUris", newSchema: "sec");
        }
        
        public override void Down()
        {
            MoveTable(name: "sec.ClientRedirectUris", newSchema: "dbo");
            MoveTable(name: "sec.ClientPostLogoutRedirectUris", newSchema: "dbo");
            MoveTable(name: "sec.ClientIdPRestrictions", newSchema: "dbo");
            MoveTable(name: "sec.ClientSecrets", newSchema: "dbo");
            MoveTable(name: "sec.ClientClaims", newSchema: "dbo");
            MoveTable(name: "sec.ClientScopes", newSchema: "dbo");
            MoveTable(name: "sec.ClientCustomGrantTypes", newSchema: "dbo");
            MoveTable(name: "sec.ClientCorsOrigins", newSchema: "dbo");
            MoveTable(name: "sec.Clients", newSchema: "dbo");
        }
    }
}
