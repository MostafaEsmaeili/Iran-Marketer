using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.UserConfiguration
{
    public partial class AddDiscriminator : DbMigration
    {
        public override void Up()
        {
            AddColumn("sec.AspNetUsers", "Discriminator", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("sec.AspNetUsers", "Discriminator");
        }
    }
}
