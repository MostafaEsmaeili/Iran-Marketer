using System.Collections.Generic;
using IdentityServer3.Core.Configuration;
using IdentityServer3.Core.Models;
using IdentityServer3.Core.Services;
using IdentityServer3.Core.Services.Caching;
using IdentityServer3.Core.Services.Default;
using IdentityServer3.EntityFramework;
using Sahra.MutualFund.IdentityServer.WebHost.IdSvr.CustomDbContext;
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

namespace Sahra.MutualFund.IdentityServer.WebHost.IdSvr
{
    class Factory
    {
        public static IdentityServerServiceFactory Configure()
        {




            var factory = new IdentityServerServiceFactory
            {
                ScopeStore = new Registration<IScopeStore>(new ScopeStore(new CustomScopeDbContext("AspId", "sec"))),
                ClientStore = new Registration<IClientStore>(new ClientStore(new CustomClientDbContext("AspId", "sec"))),
                //CorsPolicyService = new Registration<ICorsPolicyService>(new DefaultCorsPolicyService {AllowAll = true}),
                ////AuthorizationCodeStore =
                ////    new Registration<IAuthorizationCodeStore>(
                ////        new AuthorizationCodeStore(new CustomOperationalDbContext("AspId", "sec"),
                ////            new CachingScopeStore(new ScopeStore(new CustomScopeDbContext("AspId", "sec")),
                ////                new DefaultCache<IEnumerable<Scope>>()),
                ////            new ClientStore(new CustomClientDbContext("AspId", "sec")))),
                //RefreshTokenStore =
                //    new Registration<IRefreshTokenStore>(
                //        new CustomRefreshTokenStore(new CustomOperationalDbContext("AspId,sec"),
                //            new CachingScopeStore(new ScopeStore(new CustomScopeDbContext("AspId", "sec")),
                //                new DefaultCache<IEnumerable<Scope>>()),
                //            new ClientStore(new CustomClientDbContext("AspId", "sec")))),

                //TokenHandleStore =
                //    new Registration<ITokenHandleStore>(new TokenHandleStore(
                //        new CustomOperationalDbContext("AspId,sec"),
                //        new ScopeStore(new CustomScopeDbContext("AspId", "sec")),
                //        new ClientStore(new CustomClientDbContext("AspId", "sec"))))
            };
            return factory;
        }
    }
}
