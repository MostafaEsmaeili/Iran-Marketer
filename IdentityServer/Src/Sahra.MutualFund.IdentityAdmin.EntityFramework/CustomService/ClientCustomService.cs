using IdentityServer3.Core.Services;
using IdentityServer3.EntityFramework;

namespace Sahra.MutualFund.IdentityAdmin.EntityFramework.CustomService
{
   public class ClientCustomService :ClientStore
    {
       public ClientCustomService(IClientConfigurationDbContext context) : base(context)
       {
       }
    }
    public class  ScopeCustomService : ScopeStore
    {
        public ScopeCustomService(IScopeConfigurationDbContext context) : base(context)
        {
           
        }
        
    }
    public class  AuthStor:AuthorizationCodeStore
    {
        public AuthStor(IOperationalDbContext context, IScopeStore scopeStore, IClientStore clientStore) : base(context, scopeStore, clientStore)
        {
        }
    }
}
