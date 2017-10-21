using System;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using IdentityServer3.Core.Models;
using IdentityServer3.Core.Services;
using IdentityServer3.Core.Services.Default;
using IdentityServer3.EntityFramework;
using IdentityServer3.EntityFramework.Entities;
using Client = IdentityServer3.EntityFramework.Entities.Client;
using Consent = IdentityServer3.EntityFramework.Entities.Consent;
using Scope = IdentityServer3.EntityFramework.Entities.Scope;
using Token = IdentityServer3.EntityFramework.Entities.Token;

namespace Sahra.MutualFund.IdentityServer.WebHost.IdSvr.CustomDbContext
{
    public class CustomScopeDbContext : BaseDbContext, IScopeConfigurationDbContext
    {
    
        public DbSet<Scope> Scopes { get; set; }

        public CustomScopeDbContext()
          : this("IdentityServer33")
        {
        }

        public CustomScopeDbContext(string connectionString)
          : base(connectionString)
        {
        }

        public CustomScopeDbContext(string connectionString, string schema)
          : base(connectionString, schema)
        {
        }

        protected override void ConfigureChildCollections()
        {
            this.RegisterScopeChildTablesForDelete<Scope>();
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema("sec");

            base.OnModelCreating(modelBuilder);
            modelBuilder.ConfigureScopes(this.Schema);
        }
    }
    public class CustomClientDbContext : BaseDbContext, IClientConfigurationDbContext
    {
        public DbSet<Client> Clients { get; set; }

        public CustomClientDbContext()
          : this("IdentityServer33")
        {
        }

        public CustomClientDbContext(string connectionString)
          : base(connectionString)
        {
        }

        public CustomClientDbContext(string connectionString, string schema)
          : base(connectionString, schema)
        {
        }

        protected override void ConfigureChildCollections()
        {
            this.RegisterClientChildTablesForDelete<Client>();
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema("sec");

            base.OnModelCreating(modelBuilder);
            DbModelBuilderExtensions.ConfigureClients(modelBuilder, this.Schema);
        }
    }
    public class CustomOperationalDbContext : BaseDbContext, IOperationalDbContext, IDisposable
    {
        public DbSet<Consent> Consents { get; set; }

        public DbSet<Token> Tokens { get; set; }

       public DbSet<RefToken> RefTokens { get; set; }

        public CustomOperationalDbContext()
          : this("AspId")
        {
        }

        public CustomOperationalDbContext(string connectionString)
          : base(connectionString)
        {
        }

        public CustomOperationalDbContext(string connectionString, string schema)
          : base(connectionString, schema)
        {
        }

        protected override void ConfigureChildCollections()
        {
            this.RegisterConsentChildTablesForDelete<Consent>();
            this.RegisterTokenChildTablesForDelete<Token>();
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema("sec");

            base.OnModelCreating(modelBuilder);
            modelBuilder.ConfigureConsents(this.Schema);
            modelBuilder.ConfigureTokens(this.Schema);
         


        }
    }

    public class CustomRefreshTokenStore : BaseTokenStore<RefreshToken>, IRefreshTokenStore
    {
        public CustomRefreshTokenStore(IOperationalDbContext context, IScopeStore scopeStore, IClientStore clientStore)
          : base(context, TokenType.RefreshToken, scopeStore, clientStore)
        {
        }

       
        public override async Task StoreAsync(string key, RefreshToken value)
        {

            var token = await ((CustomOperationalDbContext)context).Tokens.FindAsync(new object[2]
            {
        key,
        tokenType
            });
            if (token == null)
            {
             
                token = new RefToken
                {
                    Key = key,
                    SubjectId = value.SubjectId,
                    ClientId = value.ClientId,
                    TokenType = this.tokenType,
                    Email = value.AccessToken.Claims.FirstOrDefault(x => x.Type== "preferred_username")?.Value,
                   
                };

                ((CustomOperationalDbContext)context).Tokens.Add(token);
            }
            token.JsonCode = this.ConvertToJson(value);
            token.Expiry = value.CreationTime.AddSeconds((double)value.LifeTime);
            int num = await this.context.SaveChangesAsync();
        }
    }



    public class RefToken : Token
    {
        public virtual string Email { get; set; }
    }

}
