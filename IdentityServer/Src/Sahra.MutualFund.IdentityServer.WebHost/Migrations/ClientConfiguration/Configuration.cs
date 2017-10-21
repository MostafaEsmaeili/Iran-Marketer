using System.Data.Entity.Migrations;

namespace Sahra.MutualFund.IdentityServer.WebHost.Migrations.ClientConfiguration
{
    internal sealed class Configuration : DbMigrationsConfiguration<WebHost.IdSvr.CustomDbContext.CustomClientDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            MigrationsDirectory = @"Migrations\ClientConfiguration";
        }

        protected override void Seed(WebHost.IdSvr.CustomDbContext.CustomClientDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
        }
    }
}
