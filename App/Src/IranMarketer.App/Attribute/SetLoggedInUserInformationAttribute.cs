using System;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;
using System.Web.Mvc;
using IranMarketer.App.Helper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Filters;
using IranMarketer.PartyManagement.API;
using IranMarketer.UserManagement;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using ActionFilterAttribute = System.Web.Mvc.ActionFilterAttribute;
using AuthenticationManager = IranMarketer.UserManagement.AuthenticationManager;


namespace IranMarketer.App.Attribute
{
    public class SetLoggedInUserInformationAttribute : ActionFilterAttribute
    {
        public IServiceAccessService AccessService => CoreContainer.Container.Resolve<IServiceAccessService>();
        public PartyProvider PartyProvider => CoreContainer.Container.Resolve<PartyProvider>();

        private static bool SkipAuthorization(ActionExecutingContext actionContext)
        {

            return actionContext.ActionDescriptor.GetCustomAttributes(typeof(AllowAnonymousAttribute), true).Any() // <AllowAnonymousAttribute>().Any()
                   || actionContext.ActionDescriptor.ControllerDescriptor.GetCustomAttributes(typeof(AllowAnonymousAttribute), true).Any();
        }

        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        public override void OnActionExecuting(ActionExecutingContext actionContext)
        {

            try
            {
                var controller = actionContext.Controller as Controller;
                var identity = (ClaimsIdentity)controller.User.Identity;

                if (SkipAuthorization(actionContext))
                {
                    base.OnActionExecuting(actionContext);
                }
                else
                {
                    var userName = identity?.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Name)?.Value;
                    if (string.IsNullOrEmpty(userName))
                    {
                        Logger.ErrorException("نام کاربری خالی است", new Exception("نام کاربری خالی است"));
                        actionContext.Result = new HttpUnauthorizedResult();


                    }
                    else
                    {


                        var filterType =
                            actionContext.ActionParameters.Values.FirstOrDefault(r => r.GetType()
                                .InheritsOrImplements(typeof(BaseDto<>)));

                        if (filterType != null)
                        {



                            var filterName = actionContext.ActionParameters.FirstOrDefault(r => r.Value == filterType).Key;
                            dynamic list = Activator.CreateInstance(filterType.GetType());
                            list = filterType;
                            if (userName != null)
                            {


                                list.PartyId = identity.FindFirst(ClaimTypes.UserData).Value.SafeInt();
                                list.UserName = userName;
                                list.UserId = identity.FindFirst(ClaimTypes.NameIdentifier).Value;

                                //if (branch?.BranchId != null)
                                //{
                                //    list.BranchCode = BranchProvider.BranchService.GetKey((int)branch.BranchId).Code;
                                //    if (branch?.BranchId != null) list.BranchId = (int)branch?.BranchId;
                                //}

                            }
                            actionContext.ActionParameters[filterName] = list;
                        }
                    }
                    base.OnActionExecuting(actionContext);
                   
                }

            }
            catch (Exception ex)
            {
                //  Logger.ErrorException(exception.Message, exception);
            }
        }


        public int Order { get; set; }
    }


    //public class IsAdmin : ActionFilterAttribute
    //{
    //    public IPortalCustomerService PortalCustomerService => Core.Container.Resolve<IPortalCustomerService>();
    //    public IServiceAccessService AccessService => Core.Container.Resolve<IServiceAccessService>();
    //    public AuthorizeProvider AuthorizeProvider => Core.Container.Resolve<AuthorizeProvider>();

    //    public CommonLogger Logger => new CommonLogger(GetType().FullName);
    //    public override void OnActionExecuting(HttpActionContext actionContext)
    //    {

    //        try
    //        {
    //            var principal = actionContext.RequestContext.Principal as ClaimsPrincipal;

    //            var userName = principal?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;

    //            var isAdmin = AccessService.GetApplicationUserByUserName(userName)?.IsAdmin ?? false;
    //            if (isAdmin)
    //            {
    //                base.OnActionExecuting(actionContext);
    //            }
    //            else
    //            {
    //                actionContext.Response = new HttpResponseMessage
    //                {
    //                    StatusCode = HttpStatusCode.Unauthorized
    //                };
    //            }


    //        }
    //        catch (Exception)
    //        {
    //            //  Logger.ErrorException(exception.Message, exception);
    //        }
    //    }


    //    public int Order { get; set; }
    //}

    //public class IsCustomizedAccess : ActionFilterAttribute
    //{
    //    public IPortalCustomerService PortalCustomerService => Core.Container.Resolve<IPortalCustomerService>();
    //    public IServiceAccessService AccessService => Core.Container.Resolve<IServiceAccessService>();
    //    public AuthorizeProvider AuthorizeProvider => Core.Container.Resolve<AuthorizeProvider>();

    //    public CommonLogger Logger => new CommonLogger(GetType().FullName);
    //    public override void OnActionExecuting(HttpActionContext actionContext)
    //    {

    //        try
    //        {
    //            var principal = actionContext.RequestContext.Principal as ClaimsPrincipal;

    //            var userName = principal?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;

    //            var isCustomizedAccess = AccessService.GetApplicationUserByUserName(userName)?.IsCustomizedAccess ?? false;
    //            if (isCustomizedAccess)
    //            {
    //                base.OnActionExecuting(actionContext);
    //            }
    //            else
    //            {
    //                actionContext.Response = new HttpResponseMessage
    //                {
    //                    StatusCode = HttpStatusCode.Unauthorized
    //                };
    //            }


    //        }
    //        catch (Exception)
    //        {
    //            //  Logger.ErrorException(exception.Message, exception);
    //        }
    //    }


    //    public int Order { get; set; }
    //}



}
