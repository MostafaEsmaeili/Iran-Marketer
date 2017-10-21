//using IdentityServer3.AccessTokenValidation;

using IdentityServer3.AccessTokenValidation;
using Owin;
using IranMarketer.Common.Identity_Server;
using IranMarketer.UserManagement;

namespace IranMarketer.WebAPI
{
    public partial class StartUp
    {
        public void ConfigureAuth(IAppBuilder app)
        {
            //app.CreatePerOwinContext(IdentityModels.ApplicationDbContext.Create);
            //app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);
            //app.CreatePerOwinContext<ApplicationRoleManager>(ApplicationRoleManager.Create);
            //app.CreatePerOwinContext<ApplicationSignInManager>(ApplicationSignInManager.Create);
            //app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);
            //app.CreatePerOwinContext<ApplicationRoleManager>(ApplicationRoleManager.Create);
            //app.CreatePerOwinContext<ApplicationSignInManager>(ApplicationSignInManager.Create);
            //  app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);

            //app.UseIdentityServerBearerTokenAuthentication(new IdentityServerBearerTokenAuthenticationOptions
            //{

            //    //  Authority = "",
            //    //  Authority = "",
            //    Authority = IdentityServerSettings.Insance.AuthorityAddress,
            //    RequiredScopes = new[] { "profile", "email" },

            //    // client credentials for the introspection endpoint
            //    ClientId = "SahraFund",
            //    ClientSecret = "secret"
            //});


            //app.UseCookieAuthentication(new CookieAuthenticationOptions
            //{
            //    AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
            //    LoginPath = new PathString("/Account/Login"),
            //    Provider = new CookieAuthenticationProvider()
            //});
            //app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);

            //app.UseTwoFactorSignInCookie(DefaultAuthenticationTypes.TwoFactorCookie, TimeSpan.FromMinutes(5));

            //app.UseTwoFactorRememberBrowserCookie(DefaultAuthenticationTypes.TwoFactorRememberBrowserCookie);
        }
    }
}
