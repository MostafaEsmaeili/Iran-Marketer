using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using RestSharp;
using IranMarketer.App.Attrebute;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Provider;
using IranMarketer.Authentication;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.DTO.ServiceAcces;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using Pikad.Framework.Repository.IoC;
using FlatServiceAccess = IranMarketer.Domain.Entity.FlatServiceAccess;

namespace IranMarketer.App.Controllers
{

    public class UserManagementController : BaseController
    {
        public UserManagementProvider UserManagementProvider =>
            CoreContainer.Container.Resolve<UserManagementProvider>();
        // GET: UserManagement


        [HttpGet]
        public ActionResult AddLegalUser()
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("index", "Home");
            }
            var model = new UserManagementAddFilter();
            return View(model);
        }
        //public ActionResult UpdateUser(string userName)
        //{
        //    try
        //    {
        //        var req = ApiHelper.Request(ApiAddressProvider.AccountApi + "GetUserInformationByUserName", Method.POST);
        //        req.AddJsonBody(new BaseReportFilter<UserManagementEditFilter>
        //        {
        //            ReportFilter = new UserManagementEditFilter
        //            {
        //                UserName = userName
        //            }
        //        });
        //        var userDto = req.Exec<ApiResponse<Domain.DTO.UserManagement>>(this);
        //        return View(userDto.Data.Result);
        //    }
        //    catch (Exception)
        //    {


        //        return Json(new ApiResponse<object>
        //        {
        //            BRuleCode = 1,
        //            Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

        //        });
        //    }

        //}
        //[HttpPost]
        //public JsonResult UpdateUser(UserManagementUpdateFilter model)
        //{
        //    try
        //    {
        //        var req = ApiHelper.Request(ApiAddressProvider.AccountApi + "UpdateUser", Method.POST);
        //        req.AddJsonBody(new BaseReportFilter<UserManagementUpdateFilter>
        //        {
        //            ReportFilter = model
        //        });
        //        var res = req.Exec<ApiResponse<object>>(this);

        //        return Json(res.Data);
        //    }
        //    catch (Exception ex)
        //    {

        //        return Json(new ApiResponse<object>
        //        {
        //            BRuleCode = 1,
        //            Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

        //        });
        //    }
        //}
        [HttpGet]
        public ActionResult AddUser()
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("index", "Home");
            }
            var model = new UserManagementAddFilter();

            return View(model);
        }

        [HttpPost]
        [AllowAnonymous]
        public JsonResult AddUser(UserManagementAddFilter model)
        {
            try
            {
                model.PartyType = PartyType.Retail;
                UserManagementProvider.AddUser(model);

                return Json(new ApiResponse<object>
                {
                    Result = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
                });
            }
            catch (Exception ex)
            {

                return Json(new ApiResponse<object>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                });
            }
        }
        [HttpPost]
        [AllowAnonymous]
        public JsonResult AddLegalUser(UserManagementAddFilter model)
        {
            try
            {
                model.PartyType = PartyType.Institutional;
                UserManagementProvider.AddUser(model);

                return Json(new ApiResponse<object>
                {
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult

                });
            }
            catch (Exception ex)
            {

                return Json(new ApiResponse<object>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                });
            }
        }


        public ActionResult AddServiceAccessByRoleIdAndPage()
        {

            return View();
        }

        //public ActionResult GetAllPagebyRolesId([DataSourceRequest] DataSourceRequest request,string roleId)
        //{

        //    try
        //    {
        //        var req = ApiHelper.Request(ApiAddressProvider.ServiceAccessApi + "GetAllPageAccessBasedOnRoles", Method.POST);
        //        req.AddJsonBody(new BaseReportFilter<ReportFilter>
        //        {
        //            ReportFilter = new ReportFilter()
        //        });
        //        var res = req.Exec<ApiPagedCollectionResponse<Domain.DTO.ServiceAcces.FlatServiceAccess>>(this);
        //        var data = res.Data.Result.FirstOrDefault(x => x.RoleId == roleId);
        //        return Json(data?.PageTypes.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {

        //        return Json(new ApiResponse<object>
        //        {
        //            BRuleCode = 1,
        //            Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

        //        });
        //    }
        //}


    }
}