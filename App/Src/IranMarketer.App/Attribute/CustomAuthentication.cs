using System;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Web.Http.Controllers;
using System.Web.Mvc;
using Castle.Core.Internal;
using IranMarketer.Common.Utility;
using IranMarketer.Domain;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.PartyManagement.Interface;
using IranMarketer.UserManagement;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using AllowAnonymousAttribute = System.Web.Http.AllowAnonymousAttribute;
using AuthenticationManager = IranMarketer.UserManagement.AuthenticationManager;
using AuthorizeAttribute = System.Web.Mvc.AuthorizeAttribute;


namespace IranMarketer.App.Attribute
{

    public class CustomAuthorizeAttribute : AuthorizeAttribute

    {
        protected ILegalPartyService LegalPartyService => CoreContainer.Container.Resolve<ILegalPartyService>();
        protected IRetailPartyService RetailPartyService => CoreContainer.Container.Resolve<IRetailPartyService>();
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        private IdentityModels.ApplicationUser user = null;
        protected static bool SkipAuthorization(AuthorizationContext filterContext)
        {

            return filterContext.ActionDescriptor.GetCustomAttributes(typeof(AllowAnonymousAttribute), true).Any()
                   || filterContext.ActionDescriptor.ControllerDescriptor.GetCustomAttributes(typeof(AllowAnonymousAttribute), true).Any();
        }
        public override void OnAuthorization(AuthorizationContext actionContext)
             
        {
            if (SkipAuthorization(actionContext))
            {
                return;
            }

            if (AuthorizeRequest(actionContext))
            {
                return;
            }
            HandleUnauthorizedRequest(actionContext);
        }

        protected override void HandleUnauthorizedRequest(AuthorizationContext actionContext)

        {
            actionContext.Result = IsAuthorized(actionContext) ? new HttpStatusCodeResult(HttpStatusCode.Forbidden):
            new HttpUnauthorizedResult();
            //? HttpStatusCode.Forbidden
            //: HttpStatusCode.Unauthorized);
        }

        protected virtual  bool AuthorizeRequest(AuthorizationContext actionContext)

        {
            try
            {
            
                if (IsAuthorized(actionContext))
                {
                    return true;
                   
                    }
                return false;
            }
            
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return false;
            }
        }

        protected virtual  bool IsAuthorized(AuthorizationContext actionContext)
        {
            try
            {
                var principal =  (ClaimsIdentity)actionContext.HttpContext.User.Identity;
                var email = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Email)?.Value;
                var userName = principal?.Claims.FirstOrDefault(x => x.Type ==ClaimTypes.Name)?.Value;
                var userId = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.NameIdentifier)?.Value;
                var partyId = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.UserData)?.Value;
                var client = principal?.Claims.FirstOrDefault(x => x.Type == "Clinet")?.Value;

                var application = client.ParseEnum(Applications.UnKnown);
                if (!userName.IsNullOrEmpty())
                {
                    user = AuthenticationManager.AuthenticationProvider.GetUserByName(userName);

                }
                var isActive = user?.Status ?? 0;

                //var session = new AccessTokenSession
                //{
                //    ClientId = client?.ToLower(),
                //    userId = userName?.ToLower()

                //};
                if (principal != null && principal.IsAuthenticated && !email.IsNullOrEmpty() &&
                    !userName.IsNullOrEmpty() && isActive == (int) UserStatus.Active)
                {

                    //if (StaticData.AccessToken.ContainsKey(session) &&
                    //    StaticData.AccessToken[session] ==
                    //    actionContext.Request.Headers.Authorization.Parameter)
                        return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return false;
            }
        }
    }

    public class LegalPartyAuthenticationAttrebute : CustomAuthorizeAttribute
    {
        protected override bool AuthorizeRequest(AuthorizationContext actionContext)
        {
            if (!IsAuthorized(actionContext)) return false;
            var principal = (ClaimsIdentity)actionContext.HttpContext.User.Identity;
            var userName = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Name)?.Value;
            var party = LegalPartyService.Get(x => x.UserName == userName).FirstOrDefault();
            return party != null;
        }

    }
    public class RetailPartyAuthenticationAttrebute : CustomAuthorizeAttribute
    {
        protected override bool AuthorizeRequest(AuthorizationContext actionContext)
        {
            if (!IsAuthorized(actionContext)) return false;
            var principal = (ClaimsIdentity)actionContext.HttpContext.User.Identity;
            var userName = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Name)?.Value;
            var party = RetailPartyService.Get(x => x.UserName == userName).FirstOrDefault();
            return party != null;
        }

    }
    public class AdminAuthenticationAttrebute : CustomAuthorizeAttribute
    {
        protected override bool AuthorizeRequest(AuthorizationContext actionContext)
        {
            if (!IsAuthorized(actionContext)) return false;
            var principal = (ClaimsIdentity)actionContext.HttpContext.User.Identity;
            var userName = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Name)?.Value;
            var retailparty = RetailPartyService.Get(x => x.UserName == userName).FirstOrDefault();
            var legalParty = LegalPartyService.Get(x => x.UserName == userName).FirstOrDefault();

            return retailparty == null && legalParty==null;
        }

    }
}
