using System;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Authentication;
using IranMarketer.Domain.Filters;
using IranMarketer.PartyManagement.API;
using IranMarketer.UserManagement;
using AuthenticationManager = IranMarketer.UserManagement.AuthenticationManager;


namespace IranMarketer.WebAPI
{
    public class SetLoggedInUserInformationAttribute : ActionFilterAttribute
    {
        public IServiceAccessService AccessService => CoreContainer.Container.Resolve<IServiceAccessService>();
        public AuthorizeProvider AuthorizeProvider => CoreContainer.Container.Resolve<AuthorizeProvider>();
        //public UserManagementProvider UserManagementProvider => CoreContainer.Container.Resolve<UserManagementProvider>();
        public PartyProvider PartyProvider=> CoreContainer.Container.Resolve<PartyProvider>();



        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        public override void OnActionExecuting(HttpActionContext actionContext)
        {

            //try
            //{
            //    var principal = actionContext.RequestContext.Principal as ClaimsPrincipal;

            //    if (actionContext.ActionDescriptor.ActionName.ToLower() == "login" || actionContext.ActionDescriptor.ActionName.ToLower() == "getuserinformationbyusername")
            //    {
            //        base.OnActionExecuting(actionContext);
            //    }
            //    else
            //    {
            //        var userName = principal?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;
            //        if (string.IsNullOrEmpty(userName))
            //        {
            //            Logger.ErrorException("نام کاربری خالی است", new Exception("نام کاربری خالی است"));
            //            actionContext.Response = new HttpResponseMessage
            //            {
            //                StatusCode = HttpStatusCode.Unauthorized
            //            };

            //        }
            //        else
            //        {
            //            var user =
            //                UserManagementProvider.GetUserInformationByUserName(
            //                    new BaseReportFilter<UserManagementEditFilter>
            //                    {
            //                        ReportFilter = new UserManagementEditFilter
            //                        {
            //                            UserName = userName
            //                        }
            //                    });


            //            var filterType = actionContext.ActionArguments.FirstOrDefault().Value.GetType().GetGenericArguments()[0];
            //            var firstFilterValue = actionContext.ActionArguments.FirstOrDefault().Value;
            //            var filterName = actionContext.ActionArguments.FirstOrDefault().Key;
            //            dynamic list = Activator.CreateInstance(filterType);
            //            list = firstFilterValue;
            //            if (userName != null)
            //            {
            //                list.RoleName = user.RolesCodeList.FirstOrDefault();
            //                list.RoleId = AuthenticationManager.AuthenticationProvider.RoleManager
            //                    .FindByName(user.RolesCodeList.FirstOrDefault()).Id;

            //                var party = PartyProvider.GetByUserName(userName);
            //               // var branch = PartyBranchService.GetAll().FirstOrDefault(x => x.PartyId == party.Id && x.ValidUntil == null);
            //                list.AuthenticatedUserName = userName;
            //                //if (branch?.BranchId != null)
            //                //{
            //                //    list.BranchCode = BranchProvider.BranchService.GetKey((int)branch.BranchId).Code;
            //                //    if (branch?.BranchId != null) list.BranchId = (int)branch?.BranchId;
            //                //}
            //                if (party?.Id != null) list.PartyId = (int)party?.Id;
            //                list.PartyName = party?.FullName ?? null;
            //            }
            //            actionContext.ActionArguments.Clear();
            //            actionContext.ActionArguments.Add(filterName, list);
            //        }
            //        base.OnActionExecuting(actionContext);
            //    }
               
            //}
            //catch (Exception ex)
            //{
            //    //  Logger.ErrorException(exception.Message, exception);
            //}
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
