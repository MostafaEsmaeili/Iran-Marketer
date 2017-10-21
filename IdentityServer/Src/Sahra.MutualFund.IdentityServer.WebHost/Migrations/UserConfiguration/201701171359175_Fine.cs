using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.UserConfiguration
{
    public partial class Fine : DbMigration
    {
        public override void Up()
        {
            AddColumn("sec.AspNetUsers", "Hometown", c => c.String());
            DropColumn("sec.AspNetRoles", "Discriminator");
            DropColumn("sec.AspNetUsers", "Discriminator");
        }
        
        public override void Down()
        {
            AddColumn("sec.AspNetUsers", "Discriminator", c => c.String());
            AddColumn("sec.AspNetRoles", "Discriminator", c => c.String());
            DropColumn("sec.AspNetUsers", "Hometown");
        }
    }
}
