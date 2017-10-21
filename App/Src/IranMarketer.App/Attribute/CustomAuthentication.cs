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
        public IServiceAccessService AccessService => CoreContainer.Container.Resolve<IServiceAccessService>();

        //public UserManagementProvider UserManagementProvider =>
        //    CoreContainer.Container.Resolve<UserManagementProvider>();
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        //public AuthorizeProvider AuthorizeProvider => CoreContainer.Container.Resolve<AuthorizeProvider>();
        private IdentityModels.ApplicationUser user = null;
        private static bool SkipAuthorization(AuthorizationContext filterContext)
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

        private bool AuthorizeRequest(AuthorizationContext actionContext)

        {
            try
            {
            
                if (IsAuthorized(actionContext))
                {
                    return true;
                    //var principal = actionContext.RequestContext.Principal as ClaimsPrincipal;

                    //var controllerName = actionContext.ControllerContext.ControllerDescriptor.ControllerName;
                    //var apiAddress = actionContext.Request.RequestUri.AbsolutePath.Remove(0, 1);
                    //var client = principal.Claims.FirstOrDefault(x => x.Type == "client_id")?.Value;
                    //var userName = principal?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;
                    //var application = client.ParseEnum(Applications.UnKnown);
                    //var roleName = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Role)?.Value;
                    //var roleId = roleName == null
                    //            ? null
                    //            : AuthenticationManager.AuthenticationProvider.RoleManager.FindByName(roleName)?.Id;

                    //        return AuthorizeProvider.IsAccessByEmailAddress(controllerName, apiAddress, userName, roleId, client);
                   
                    }
                return false;
            }
            
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return false;
            }
        }

        protected  bool IsAuthorized(AuthorizationContext actionContext)
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

    //public static class ServiceReposioryMaker
    //{
    //    public static CustomLogger Logger => new CustomLogger(typeof(ServiceReposioryMaker).FullName);
    //    public static AuthorizeProvider AuthorizeProvider = new AuthorizeProvider();
    //    public static IServiceRepositoryService ServiceRepositoryService
    //        => CoreContainer.Container.Resolve<IServiceRepositoryService>();

    //    public static IPageRepositoryRepository PageRepositoryRepository
    //        => CoreContainer.Container.Resolve<IPageRepositoryRepository>();

    //    public static void AddAllApiToServiceRepository()
    //    {
    //        try
    //        {
    //            var apis = GlobalConfiguration.Configuration.Services.GetApiExplorer().ApiDescriptions;

    //            PageRepositoryRepository.DeleteAllPageRepositories();

    //            foreach (var api in apis)
    //            {
    //                AuthorizeProvider.AddApiToServiceRepository(new ServiceRepository
    //                {
    //                    Title = api.ActionDescriptor.ActionName,
    //                    Code = api.ActionDescriptor.ActionName,
    //                    MethodName = api.Route.RouteTemplate,
    //                    ServiceName = api.ActionDescriptor.ControllerDescriptor.ControllerName,
    //                });

    //                var pageAttribs = api.ActionDescriptor.GetCustomAttributes<PageRepositoryAttribute>();

    //                if (pageAttribs == null || pageAttribs.Count <= 0) continue;


    //                var serviceRepository =
    //                    ServiceRepositoryService.GetServiceRepository(
    //                        api.ActionDescriptor.ControllerDescriptor.ControllerName,
    //                        api.Route.RouteTemplate.Substring(api.Route.RouteTemplate.IndexOf("api")));

    //                foreach (var attrib in pageAttribs.DistinctBy(x=>x.PageType))
    //                {
    //                    PageRepositoryRepository.SavePageRepository(new PageRepository
    //                    {
    //                        PageType = (int)attrib.PageType,
    //                        ServiceRepositoryId = serviceRepository.Id
    //                    });
    //                }
    //            }
    //        }
    //        catch (Exception ex)
    //        {
    //            Logger.ErrorException(ex.Message, ex);
    //            return;
    //        }
    //    }

    //}

}
