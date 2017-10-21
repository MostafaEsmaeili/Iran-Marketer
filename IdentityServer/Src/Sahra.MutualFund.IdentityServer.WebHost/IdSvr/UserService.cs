/*
 * Copyright 2014 Dominick Baier, Brock Allen
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

using System;
using System.Linq;
using System.Threading.Tasks;
using IdentityServer3.AspNetIdentity;
using IdentityServer3.Core.Configuration;
using IdentityServer3.Core.Models;
using IdentityServer3.Core.Services;
using IdentityServer3.EntityFramework;
using Sahra.MutualFund.IdentityServer.WebHost.AspId;
using Sahra.MutualFund.IdentityServer.WebHost.IdSvr.CustomDbContext;

namespace Sahra.MutualFund.IdentityServer.WebHost.IdSvr
{
    public static class IdentityServerServiceFactoryExtensions
    {
        public static void RegisterOperationalServices(this IdentityServerServiceFactory factory, EntityFrameworkServiceOptions options)
        {
            if (factory == null)
                throw new ArgumentNullException("factory");
            if (options == null)
                throw new ArgumentNullException("options");
            factory.Register<IOperationalDbContext>(new Registration<IOperationalDbContext>((Func<IDependencyResolver, IOperationalDbContext>)(resolver => (IOperationalDbContext)new CustomOperationalDbContext(options.ConnectionString, options.Schema)), (string)null));
          //  factory.AuthorizationCodeStore = (Registration<IAuthorizationCodeStore>)new Registration<IAuthorizationCodeStore, AuthorizationCodeStore>((string)null);
           factory.TokenHandleStore = new Registration<ITokenHandleStore, TokenHandleStore>((string)null);
          //  factory.ConsentStore = (Registration<IConsentStore>)new Registration<IConsentStore, ConsentStore>((string)null);
           // factory.RefreshTokenStore = (Registration<IRefreshTokenStore>)new Registration<IRefreshTokenStore, CustomRefreshTokenStore>();
        }

        public static void RegisterConfigurationServices(this IdentityServerServiceFactory factory, EntityFrameworkServiceOptions options)
        {
            IdentityServerServiceFactoryExtensions.RegisterClientStore(factory, options);
            IdentityServerServiceFactoryExtensions.RegisterScopeStore(factory, options);
        }

        public static void RegisterClientStore(this IdentityServerServiceFactory factory, EntityFrameworkServiceOptions options)
        {
            if (factory == null)
                throw new ArgumentNullException("factory");
            if (options == null)
                throw new ArgumentNullException("options");
            factory.Register<IClientConfigurationDbContext>(new Registration<IClientConfigurationDbContext>((Func<IDependencyResolver, IClientConfigurationDbContext>)(resolver => (IClientConfigurationDbContext)new ClientConfigurationDbContext(options.ConnectionString, options.Schema)), (string)null));
            factory.ClientStore = (Registration<IClientStore>)new Registration<IClientStore, ClientStore>((string)null);
            factory.CorsPolicyService = (Registration<ICorsPolicyService>)new ClientConfigurationCorsPolicyRegistration(options);
        }

        public static void RegisterScopeStore(this IdentityServerServiceFactory factory, EntityFrameworkServiceOptions options)
        {
            if (factory == null)
                throw new ArgumentNullException("factory");
            if (options == null)
                throw new ArgumentNullException("options");
            factory.Register<IScopeConfigurationDbContext>(new Registration<IScopeConfigurationDbContext>((Func<IDependencyResolver, IScopeConfigurationDbContext>)(resolver => (IScopeConfigurationDbContext)new ScopeConfigurationDbContext(options.ConnectionString, options.Schema)), (string)null));
            factory.ScopeStore = (Registration<IScopeStore>)new Registration<IScopeStore, ScopeStore>((string)null);
        }
    }
    public static class UserServiceExtensions
    {

        public static void ConfigureUserService(this IdentityServerServiceFactory factory, string connString)
        {
            factory.UserService = new Registration<IUserService, UserService>();
            factory.Register(new Registration<Context.UserManager>());
            factory.Register(new Registration<Context.UserStore>());
            factory.Register(new Registration<Context>(resolver => new Context(connString)));
            var efConfig = new EntityFrameworkServiceOptions
            {
                ConnectionString = "AspId",
                Schema = "sec",
               
            };
              factory.RegisterOperationalServices(efConfig);

        }
    }
    
    public class UserService : AspNetIdentityUserService<User, string>
    {
        public UserService(Context.UserManager userMgr)
            : base(userMgr)
        {
        }

        protected override async Task<AuthenticateResult> PostAuthenticateLocalAsync(User user, SignInMessage message)
        {
            if (base.userManager.SupportsUserTwoFactor)
            {
                var id = user.Id;

                if (await userManager.GetTwoFactorEnabledAsync(id))
                {
                    var code = await this.userManager.GenerateTwoFactorTokenAsync(id, "sms");
                    var result = await userManager.NotifyTwoFactorTokenAsync(id, "sms", code);
                    if (!result.Succeeded)
                    {
                        return new IdentityServer3.Core.Models.AuthenticateResult(result.Errors.First());
                    }

                    var name = await GetDisplayNameForAccountAsync(id);
                    return new IdentityServer3.Core.Models.AuthenticateResult("~/2fa", id, name);
                }
            }

            return null;
        }
    }
}
