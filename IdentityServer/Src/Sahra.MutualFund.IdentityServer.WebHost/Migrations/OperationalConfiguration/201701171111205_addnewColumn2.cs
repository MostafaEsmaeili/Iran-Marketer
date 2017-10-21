using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.OperationalConfiguration
{
    public partial class addnewColumn2 : DbMigration
    {
        public override void Up()
        {
            DropColumn("sec.Tokens", "Email");
            DropColumn("sec.Tokens", "Discriminator");
        }
        
        public override void Down()
        {
            AddColumn("sec.Tokens", "Discriminator", c => c.String(nullable: false, maxLength: 128));
            AddColumn("sec.Tokens", "Email", c => c.String());
        }
    }
}
