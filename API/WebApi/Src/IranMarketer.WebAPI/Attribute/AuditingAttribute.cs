using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http.Controllers;
using System.Web.Mvc;
using Castle.Core.Internal;
using Microsoft.AspNet.Identity;
using Newtonsoft.Json;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.SharedData.Interface;
using ActionFilterAttribute = System.Web.Http.Filters.ActionFilterAttribute;

namespace IranMarketer.WebAPI
{
    public class AuditingAttribute : ActionFilterAttribute
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        private IAuditingService AuditingService => CoreContainer.Container.Resolve<IAuditingService>();


        public override void OnActionExecuting(HttpActionContext actionContext)
        {
            try
            {
                var request = actionContext.Request;

                var principal = actionContext.RequestContext.Principal as ClaimsPrincipal;
                var userName = principal?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;

                //var controllerContext = new ControllerContext(filterContext.RequestContext, filterContext.Controller);
                var controller = actionContext.ControllerContext.ControllerDescriptor.ControllerName;
                var action = actionContext.Request.RequestUri.AbsolutePath.Remove(0, 1);
                var audit = new Auditing
                {
                    UserName = (!userName.IsNullOrEmpty()) ? userName : "Anonymous",
                    // UserId = (request.IsAuthenticated) ? filterContext.HttpContext.User.Identity.GetUserId() : Guid.Empty.ToString(),
                    IpAddress = request.GetClientIpAddress(),
                    AreaAccessed = JsonConvert.SerializeObject(actionContext.ActionArguments),
                    TimeAccessed = DateTime.UtcNow,
                    Action = action,
                    Controller = controller,
                    MachinName = Environment.MachineName,
                    //TODO: get id from setting
                    ApplicationId = (int)Applications.WebApi
                };

                AuditingService.SaveAuditing(audit);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }


    }
}
