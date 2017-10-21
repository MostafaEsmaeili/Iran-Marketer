using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Provider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using Kendo.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using RestSharp;

namespace IranMarketer.App.Controllers
{
    public class AdminPanelController : BaseController
    {
        // GET: AdminPanel
        //public ActionResult Industry()
        //{
        //    return View();
        //}
        public ActionResult AdminArea()
        {
            return View();
        }
        public ActionResult GetIndustries([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SharedDataApi + "GetAllIndausries", Method.POST);
                var res = req.Exec<ApiResponse<List<Industry>>>(this);
                return Json(res.Data.Result.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
        [HttpPost]
        public ActionResult SaveOrUpdateIndustries(Industry model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SharedDataApi + "SaveOrUpdateIndustry", Method.POST);
                var request=new ApiRequest<Industry>
                {
                    Entity = model
                };
                req.AddJsonBody(request);
                var res = req.Exec<ApiResponse<Industry>>(this);
                return Json(res.Data);
            }
            catch (Exception)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }



        public ActionResult GetAcademicFields([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SharedDataApi + "GetAllAcademicFiels", Method.POST);
                var res = req.Exec<ApiResponse<List<AcademicField>>>(this);
                return Json(res.Data.Result.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
        [HttpPost]
        public ActionResult SaveOrUpdateAcademicField(AcademicField model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SharedDataApi + "SaveOrUpdateAcademicFiled", Method.POST);
                var request = new ApiRequest<AcademicField>
                {
                    Entity = model
                };
                req.AddJsonBody(request);
                var res = req.Exec<ApiResponse<AcademicField>>(this);
                return Json(res.Data);
            }
            catch (Exception)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }



        public ActionResult GetJobCategories([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SharedDataApi + "GetAllJobCategories", Method.POST);
                var res = req.Exec<ApiResponse<List<JobCategory>>>(this);
                return Json(res.Data.Result.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
        [HttpPost]
        public ActionResult SaveOrUpdateJobCategory(JobCategory model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SharedDataApi + "SaveOrUpdateJobCategory", Method.POST);
                var request = new ApiRequest<JobCategory>
                {
                    Entity = model
                };
                req.AddJsonBody(request);
                var res = req.Exec<ApiResponse<JobCategory>>(this);
                return Json(res.Data);
            }
            catch (Exception)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
    }
}