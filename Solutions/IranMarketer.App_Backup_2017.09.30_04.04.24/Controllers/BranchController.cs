//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web.Mvc;
//using Kendo.Mvc.Extensions;
//using Kendo.Mvc.UI;
//using RestSharp;
//using IranMarketer.App.Attrebute;
//using IranMarketer.App.Component.Helper;
//using IranMarketer.App.Component.Provider;
//using IranMarketer.Common.Utility;
//using IranMarketer.Domain.Entity;
//using IranMarketer.Domain.Enum;
//using IranMarketer.Domain.Filters;

//namespace IranMarketer.App.Controllers
//{

//    public class BranchController : BaseController
//    {
//        public ApiHelper ApiHelper = new ApiHelper();
//        // GET: Branch
//        public ActionResult CreateBranch()
//        {
//            return View(new Branch());
//        }
//        [HttpPost]
//        public ActionResult CreateBranch(Branch branch)
//        {
//            try
//            {
//                var req = ApiHelper.Request(ApiAddressProvider.BranchApi + "SaveBranch", Method.POST);
//                req.AddJsonBody(new ApiRequest<Branch>
//                {
//                    Entity = branch
//                });

//                var res = req.Exec<ApiResponse<int>>(this);
//                return Json(res.Data, JsonRequestBehavior.AllowGet);
//            }
//            catch (Exception ex)
//            {
//                return Json(new ApiResponse<object>
//                {
//                    BRuleCode = 1,
//                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

//                });
//            }
//        }
//        [HttpPost]
//        public ActionResult UpdateBranch(Branch branch)
//        {
//            try
//            {
//                var req = ApiHelper.Request(ApiAddressProvider.BranchApi + "UpdateBranch", Method.POST);
//                req.AddJsonBody(new ApiRequest<Branch>
//                {
//                    Entity = branch
//                });

//                var res = req.Exec<ApiResponse<int>>(this);
//                return Json(res.Data, JsonRequestBehavior.AllowGet);
//            }
//            catch (Exception ex)
//            {
//                return Json(new ApiResponse<object>
//                {
//                    BRuleCode = 1,
//                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

//                });
//            }
//        }
//        public ActionResult UpdateBranch(int id)
//        {
//            try
//            {
                
//                    var req = ApiHelper.Request(ApiAddressProvider.BranchApi + "GetBranches", Method.POST);
//                    var res = req.Exec<ApiResponse<List<Branch>>>(this);

//                    var model = res.Data.Result.FirstOrDefault(x => x.Id == id);
//                return View(model);
//            }
//            catch (Exception e)
//            {
//                return Json(new ApiResponse<object>
//                {
//                    BRuleCode = 1,
//                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

//                });
//            }

//        }

//        public ActionResult Branches()
//        {
//            return View();
//        }
//        public JsonResult GetBranches([DataSourceRequest] DataSourceRequest request)
//        {
//            try
//            {
//                var req = ApiHelper.Request(ApiAddressProvider.BranchApi + "GetBranches", Method.POST);
//                var res = req.Exec<ApiResponse<List<Branch>>>(this);
//                return Json(res.Data.Result.ToDataSourceResult(request),JsonRequestBehavior.AllowGet);
//            }
//            catch (Exception ex)
//            {
//                return null;
//            }
//        }
//    }
//}