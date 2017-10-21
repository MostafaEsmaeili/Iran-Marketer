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

using IdentityManager;
using IdentityManager.AspNetIdentity;
using IdentityManager.Configuration;
using Sahra.MutualFund.IdentityServer.WebHost.AspId;

namespace Sahra.MutualFund.IdentityServer.WebHost.IdMgr
{
    public static class SimpleIdentityManagerServiceExtensions
    {
        public static void ConfigureSimpleIdentityManagerService(this IdentityManagerServiceFactory factory, string connectionString)
        {
            factory.Register(new Registration<Context>(resolver => new Context(connectionString)));
            factory.Register(new Registration<Context.UserStore>());
            factory.Register(new Registration<Context.RoleStore>());
            factory.Register(new Registration<Context.UserManager>());
            factory.Register(new Registration<Context.RoleManager>());
            factory.IdentityManagerService = new Registration<IIdentityManagerService, SimpleIdentityManagerService>();
        }
    }

    public class SimpleIdentityManagerService : AspNetIdentityManagerService<User, string, Role, string>
    {
        public SimpleIdentityManagerService(Context.UserManager userMgr, Context.RoleManager roleMgr)
            : base(userMgr, roleMgr)
        {
        }
    }
}