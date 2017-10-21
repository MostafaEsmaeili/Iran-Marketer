using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using AutoMapper.Internal;
using Castle.Core.Internal;
using Kendo.Mvc.Extensions;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Utility;
using RestSharp;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Provider;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Filters;

namespace IranMarketer.App.Attrebute
{
    public class AccessTokenAttribute : ActionFilterAttribute
    {
        private readonly ApiHelper _apiHelper = new ApiHelper();

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            try
            {
                var controller = filterContext.Controller as Controller;

                if (SkipAuthorization(filterContext))
                {
                    base.OnActionExecuting(filterContext);
                    return;
                }
                
                //var accessToken = controller.TempData.Peek("AccessToken").ToNullSafeString();

                var identity = (ClaimsIdentity)controller.User.Identity;
                var token = identity.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Authentication)?.Value;
                if ( !controller.User.Identity.IsAuthenticated || token.IsNullOrEmpty())
                {
                   // filterContext.Result=new HttpUnauthorizedResult();
                    filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new
                    {
                        controller = "Account",
                        action = "Login"
                    }));
                    filterContext.Result.ExecuteResult(filterContext.Controller.ControllerContext);
                }
                //else
                //{
                //    var request = _apiHelper.Request(ApiAddressProvider.AccountApi + "TokenValidation", Method.POST);
                //    //request.AddHeader("Authorization", "Bearer " + accessToken);
                //    var res = request.Exec<ApiResponse<ApplicationUserDTO>>(controller);
                //    if (res.StatusCode == HttpStatusCode.Unauthorized)
                //    {
                //        //controller.TempData["AccessToken"] = null;
                //        //controller.Session["AccessToken"] = null;
                //        controller.HttpContext.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ExternalCookie,
                //            DefaultAuthenticationTypes.ApplicationCookie);
                //        filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new
                //        {
                //            controller = "Account",
                //            action = "Login"
                //        }));
                //        filterContext.Result.ExecuteResult(filterContext.Controller.ControllerContext);

                //    }
                //}
               
            }
            catch (System.Exception ex)
            {
                
            }
        }

        private static bool SkipAuthorization(ActionExecutingContext actionContext)
        {

            return actionContext.ActionDescriptor.GetCustomAttributes(typeof(AllowAnonymousAttribute),true).Any() // <AllowAnonymousAttribute>().Any()
                   || actionContext.ActionDescriptor.ControllerDescriptor.GetCustomAttributes(typeof(AllowAnonymousAttribute),true).Any();
        }
   }
}