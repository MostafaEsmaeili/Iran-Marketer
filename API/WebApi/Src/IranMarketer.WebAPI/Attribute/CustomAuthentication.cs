using System;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Web.Http;
using System.Web.Http.Controllers;
using Castle.Core.Internal;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Authentication;
using IranMarketer.Common.Utility;
using IranMarketer.Domain;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.UserManagement;
using IranMarketer.WebAPI.Attrebute;
using AuthenticationManager = IranMarketer.UserManagement.AuthenticationManager;


namespace IranMarketer.WebAPI
{

    public class CustomAuthorizeAttribute : AuthorizeAttribute

    {
        public IServiceAccessService AccessService => CoreContainer.Container.Resolve<IServiceAccessService>();

        //public UserManagementProvider UserManagementProvider =>
        //    CoreContainer.Container.Resolve<UserManagementProvider>();
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        public AuthorizeProvider AuthorizeProvider => CoreContainer.Container.Resolve<AuthorizeProvider>();
        private Domain.DTO.UserManagement user = null;
        private static bool SkipAuthorization(HttpActionContext actionContext)
        {

            return actionContext.ActionDescriptor.GetCustomAttributes<AllowAnonymousAttribute>().Any()
                       || actionContext.ControllerContext.ControllerDescriptor.GetCustomAttributes<AllowAnonymousAttribute>().Any();
        }
        public override void OnAuthorization(HttpActionContext actionContext)

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

        protected override void HandleUnauthorizedRequest(HttpActionContext actionContext)

        {
            actionContext.Response =
                actionContext.Request.CreateResponse(IsAuthorized(actionContext)
                    ? HttpStatusCode.Forbidden
                    : HttpStatusCode.Unauthorized);
        }

        private bool AuthorizeRequest(HttpActionContext actionContext)

        {
            try
            {
            
                if (IsAuthorized(actionContext))
                {
                    return true;
                    var principal = actionContext.RequestContext.Principal as ClaimsPrincipal;

                    var controllerName = actionContext.ControllerContext.ControllerDescriptor.ControllerName;
                    var apiAddress = actionContext.Request.RequestUri.AbsolutePath.Remove(0, 1);
                    var client = principal.Claims.FirstOrDefault(x => x.Type == "client_id")?.Value;
                    var userName = principal?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;
                    var application = client.ParseEnum(Applications.UnKnown);
                    var roleName = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Role)?.Value;
                    var roleId = roleName == null
                                ? null
                                : AuthenticationManager.AuthenticationProvider.RoleManager.FindByName(roleName)?.Id;

                            return AuthorizeProvider.IsAccessByEmailAddress(controllerName, apiAddress, userName, roleId, client);
                   
                    }
                return false;
            }
            
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return false;
            }
        }

        protected override bool IsAuthorized(HttpActionContext actionContext)
        {
            try
            {
                var principal = actionContext.RequestContext.Principal as ClaimsPrincipal;
                var email = principal?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Email)?.Value;
                var userName = principal?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;
                var client = principal?.Claims.FirstOrDefault(x => x.Type == "client_id")?.Value;

                var application = client.ParseEnum(Applications.UnKnown);
                if (!userName.IsNullOrEmpty())
                {
                    //user = UserManagementProvider.GetUsersByFilter(null).FirstOrDefault(x => x.UserName == userName);

                }
                var isActive = user?.Status ?? 0;

                var session = new AccessTokenSession
                {
                    ClientId = client?.ToLower(),
                    userId = userName?.ToLower()

                };
                if (principal != null && principal.Identity.IsAuthenticated && !email.IsNullOrEmpty() &&
                    !userName.IsNullOrEmpty() && isActive ==  UserStatus.Active)
                {

                    if (StaticData.AccessToken.ContainsKey(session) &&
                        StaticData.AccessToken[session] ==
                        actionContext.Request.Headers.Authorization.Parameter)
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

    public static class ServiceReposioryMaker
    {
        public static CustomLogger Logger => new CustomLogger(typeof(ServiceReposioryMaker).FullName);
        public static AuthorizeProvider AuthorizeProvider = new AuthorizeProvider();
        public static IServiceRepositoryService ServiceRepositoryService
            => CoreContainer.Container.Resolve<IServiceRepositoryService>();

        public static IPageRepositoryRepository PageRepositoryRepository
            => CoreContainer.Container.Resolve<IPageRepositoryRepository>();

        public static void AddAllApiToServiceRepository()
        {
            try
            {
                var apis = GlobalConfiguration.Configuration.Services.GetApiExplorer().ApiDescriptions;

                PageRepositoryRepository.DeleteAllPageRepositories();

                foreach (var api in apis)
                {
                    AuthorizeProvider.AddApiToServiceRepository(new ServiceRepository
                    {
                        Title = api.ActionDescriptor.ActionName,
                        Code = api.ActionDescriptor.ActionName,
                        MethodName = api.Route.RouteTemplate,
                        ServiceName = api.ActionDescriptor.ControllerDescriptor.ControllerName,
                    });

                    var pageAttribs = api.ActionDescriptor.GetCustomAttributes<PageRepositoryAttribute>();

                    if (pageAttribs == null || pageAttribs.Count <= 0) continue;


                    var serviceRepository =
                        ServiceRepositoryService.GetServiceRepository(
                            api.ActionDescriptor.ControllerDescriptor.ControllerName,
                            api.Route.RouteTemplate.Substring(api.Route.RouteTemplate.IndexOf("api")));

                    foreach (var attrib in pageAttribs.DistinctBy(x=>x.PageType))
                    {
                        PageRepositoryRepository.SavePageRepository(new PageRepository
                        {
                            PageType = (int)attrib.PageType,
                            ServiceRepositoryId = serviceRepository.Id
                        });
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return;
            }
        }

    }

}
