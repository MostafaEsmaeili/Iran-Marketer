using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.UserManagement
{
    public class ApplicationSignInManager : SignInManager<IdentityModels.ApplicationUser, string>
    {
        public ApplicationSignInManager(ApplicationUserManager userManager, IAuthenticationManager authenticationManager)
            : base(userManager, authenticationManager)
        {
        }

    

        public static ApplicationSignInManager Create(IdentityFactoryOptions<ApplicationSignInManager> options, IOwinContext context)
        {
            return new ApplicationSignInManager(context.GetUserManager<ApplicationUserManager>(), context.Authentication);
        }
    }
    public class EmailService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            sendMail(message);
            // Plug in your email service here to send an email.
            return Task.FromResult(0);
        }
        void sendMail(IdentityMessage message)
        {
            var mail = new MailMessage();
            //var smtpServer = new SmtpClient("smtp.gmail.com");
            var smtpServer = new SmtpClient(ConfigurationManager.AppSettings["SmtpClientAddress"].SafeString());

            mail.From = new MailAddress(ConfigurationManager.AppSettings["IdentityMailAddress"].SafeString());
            mail.To.Add(message.Destination);
            mail.Subject = message.Subject;
            mail.Body = message.Body;
            mail.IsBodyHtml = true;
            smtpServer.Port = ConfigurationManager.AppSettings["IdentityMailPort"].SafeInt();
            smtpServer.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["NetworkCredentialUsername"].SafeString(), ConfigurationManager.AppSettings["NetworkCredentialPassword"].SafeString());
            smtpServer.EnableSsl = true;
            //smtpServer.UseDefaultCredentials = true;
            smtpServer.Send(mail);

        }
    }

    public class SmsService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Plug in your SMS service here to send a text message.
            return Task.FromResult(0);
        }
        
    }
    public class ApplicationUserManager : UserManager<IdentityModels.ApplicationUser>
    {
        public ApplicationUserManager(IUserStore<IdentityModels.ApplicationUser> store)
            : base(store)
        {
        }

        public static ApplicationUserManager Create(IdentityFactoryOptions<ApplicationUserManager> options, IOwinContext context)
        {
            //var manager = new ApplicationUserManager(new UserStore<IdentityModels.ApplicationUser>(context.Get<IdentityModels.ApplicationDbContext>()));
            var userStore = new UserStore<IdentityModels.ApplicationUser, IdentityModels.ApplicationRole>(IdentityModels.ApplicationDbContext.Create());
           // var users2= HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>()(
            var manager = new ApplicationUserManager(userStore);

            // Configure validation logic for usernames
            manager.UserValidator = new UserValidator<IdentityModels.ApplicationUser>(manager)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = true
            };

            // Configure validation logic for passwords
            manager.PasswordValidator = new PasswordValidator
            {
               
                RequireNonLetterOrDigit = false,
                RequireDigit = false,
                RequireLowercase = false,
                RequireUppercase = false,
            };

            // Configure user lockout defaults
            manager.UserLockoutEnabledByDefault = true;
            manager.DefaultAccountLockoutTimeSpan = TimeSpan.FromMinutes(30);
            manager.MaxFailedAccessAttemptsBeforeLockout = 3;

            // Register two factor authentication providers. This application uses Phone and Emails as a step of receiving a code for verifying the user
            // You can write your own provider and plug it in here.
            manager.RegisterTwoFactorProvider("Phone Code", new PhoneNumberTokenProvider<IdentityModels.ApplicationUser>
            {
                MessageFormat = "Your security code is {0}"
            });
            manager.RegisterTwoFactorProvider("Email Code", new EmailTokenProvider<IdentityModels.ApplicationUser>
            {
                Subject = "Security Code",
                BodyFormat = "Your security code is {0}"
            });
            manager.EmailService = new EmailService();
            manager.SmsService = new SmsService();
            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider =
                    new DataProtectorTokenProvider<IdentityModels.ApplicationUser>(dataProtectionProvider.Create("ASP.NET Identity"));
            }
            return manager;
        }


       
    }

    public class ApplicationRoleManager : RoleManager<IdentityModels.ApplicationRole>
    {
        public ApplicationRoleManager(IRoleStore<IdentityModels.ApplicationRole, string> roleStore)
            : base(roleStore)
        {
        }

        public static ApplicationRoleManager Create(IdentityFactoryOptions<ApplicationRoleManager> options, IOwinContext context)
        {
            var roleStore = new RoleStore<IdentityModels.ApplicationUser, IdentityModels.ApplicationRole>(IdentityModels.ApplicationDbContext.Create());

            return new ApplicationRoleManager(roleStore);
        }
    }
}
