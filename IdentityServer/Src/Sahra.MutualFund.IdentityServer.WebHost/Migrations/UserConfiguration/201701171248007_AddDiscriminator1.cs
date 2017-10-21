using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.UserConfiguration
{
    public partial class AddDiscriminator1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("sec.AspNetRoles", "Discriminator", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("sec.AspNetRoles", "Discriminator");
        }
    }
}
