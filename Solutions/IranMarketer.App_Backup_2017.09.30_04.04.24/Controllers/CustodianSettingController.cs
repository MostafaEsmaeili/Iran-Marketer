using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using RestSharp;
using IranMarketer.App.Attrebute;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Provider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using CustodianSetting = IranMarketer.Domain.DTO.CustodianSetting;

namespace IranMarketer.App.Controllers
{
    public class CustodianSettingController : BaseController
    {
        [HttpPost]

        public ActionResult SaveSetting(CustodianSetting setting)

        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "SaveCustodianSetting", Method.POST);
                req.AddJsonBody(new BaseReportFilter<AddCustodianSettingFilter>
                {
                    ReportFilter = new AddCustodianSettingFilter
                    {
                        Setting = setting
                    }
                });
              //  TempData["TempManageMentSetting"] = null;
                var res = req.Exec<ApiResponse<object>>(this);

                return Json(res.Data);
            }
            catch (Exception ex)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
        [HttpPost]

        public JsonResult GetHistoricalCustodianSettings([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetAllCustodianSettings", Method.POST);
                req.AddJsonBody(new BaseReportFilter<ReportFilter>
                {
                    ReportFilter = new ReportFilter
                    {
                        DateFilter = new DateFilter
                        {
                            EndDate = DateTime.Now,
                            StartDate = IranMarketerCustomUtility.MinDate
                        }
                    }
                });
                var res = req.Exec<ApiPagedCollectionResponse<CustodianSetting>>(this);

                return Json(res.Data.Result.ToDataSourceResult(request));
            }
            catch (Exception ex)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }

        [HttpPost]

        public ActionResult CustodianSettingsByGuid(string id)
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetCustodianSettingByGuid", Method.POST);
                req.AddJsonBody(new BaseReportFilter<GeneralSettingFilter>
                {
                    ReportFilter = new GeneralSettingFilter
                    {
                        Guid = id
                    }
                });

                var res = req.Exec<ApiResponse<CustodianSetting>>(this);
              //  TempData["TempManageMentSetting"] = res.Data.Result.ManagementFees.ToDictionary(p => p.FeeType);
                return Json(res.Data.Result);
                //  return Json(res.Data.Result);
            }
            catch (Exception ex)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }


        }

        //public ActionResult TempManageMentSettingFeeRead([DataSourceRequest] DataSourceRequest request)
        //{
        //    try
        //    {
        //        if (TempData.Peek("TempManageMentSetting") != null)
        //        {
        //            var model = ((Dictionary<int, ManagementFee>)TempData.Peek("TempManageMentSetting")).Values.ToList();
        //            return Json(model.ToDataSourceResult(request));
        //        }
        //        return null;
        //    }
        //    catch (Exception e)
        //    {
        //        Logger.ErrorException(e.Message, e);
        //        return null;
        //    }
        //}

        //public ActionResult TempManageMentSettingFeeAddAndUpdate([DataSourceRequest] DataSourceRequest request,
        //    [Bind(Prefix = "models")] IEnumerable<ManagementFee> model)
        //{
        //    try
        //    {
        //        var dict = new Dictionary<int, ManagementFee>();
        //        var managementFees = model as IList<ManagementFee> ?? model.ToList();
        //        if (!managementFees.Any()) return Json(new[] { managementFees }.ToDataSourceResult(request, ModelState));
        //        if (TempData.Peek("TempManageMentSetting") == null)
        //        {
        //            foreach (var person in managementFees)
        //            {
        //                if (!dict.ContainsKey(person.FeeType))
        //                {
        //                    dict.Add(person.FeeType, person);
        //                }
        //                else
        //                {
        //                    dict[person.FeeType] = person;
        //                }
        //            }


        //            TempData["TempManageMentSetting"] = dict;
        //            return Json(dict.Values.ToList().ToDataSourceResult(request)); ;
        //        }


        //        dict = (Dictionary<int, ManagementFee>)TempData.Peek("TempManageMentSetting");
        //        foreach (var person in managementFees)
        //        {
        //            if (!dict.ContainsKey(person.FeeType))
        //            {
        //                dict.Add(person.FeeType, person);
        //            }
        //            else
        //            {
        //                dict[person.FeeType] = person;
        //            }
        //        }
        //        TempData["TempManageMentSetting"] = dict;


        //        return Json(dict.Values.ToList().ToDataSourceResult(request));

        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        return null;
        //    }

        //}
    }
}