using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.OperationalConfiguration
{
    public partial class addnewColumn : DbMigration
    {
        public override void Up()
        {
            AddColumn("sec.Tokens", "Email", c => c.String());
            AddColumn("sec.Tokens", "Discriminator", c => c.String(nullable: false, maxLength: 128));
        }
        
        public override void Down()
        {
            DropColumn("sec.Tokens", "Discriminator");
            DropColumn("sec.Tokens", "Email");
        }
    }
}
