using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.UserConfiguration
{
    public partial class InitUser : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "sec.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
            CreateTable(
                "sec.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("sec.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .ForeignKey("sec.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "sec.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        DisplayName = c.String(),
                        IsAdmin = c.Boolean(nullable: false),
                        IsCustomizedAccess = c.Boolean(nullable: false),
                        CreateDate = c.DateTime(),
                        Status = c.Int(),
                        Email = c.String(maxLength: 256),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex");
            
            CreateTable(
                "sec.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("sec.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "sec.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("sec.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("sec.AspNetUserRoles", "UserId", "sec.AspNetUsers");
            DropForeignKey("sec.AspNetUserLogins", "UserId", "sec.AspNetUsers");
            DropForeignKey("sec.AspNetUserClaims", "UserId", "sec.AspNetUsers");
            DropForeignKey("sec.AspNetUserRoles", "RoleId", "sec.AspNetRoles");
            DropIndex("sec.AspNetUserLogins", new[] { "UserId" });
            DropIndex("sec.AspNetUserClaims", new[] { "UserId" });
            DropIndex("sec.AspNetUsers", "UserNameIndex");
            DropIndex("sec.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("sec.AspNetUserRoles", new[] { "UserId" });
            DropIndex("sec.AspNetRoles", "RoleNameIndex");
            DropTable("sec.AspNetUserLogins");
            DropTable("sec.AspNetUserClaims");
            DropTable("sec.AspNetUsers");
            DropTable("sec.AspNetUserRoles");
            DropTable("sec.AspNetRoles");
        }
    }
}
