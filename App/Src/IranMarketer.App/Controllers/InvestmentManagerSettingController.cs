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

namespace IranMarketer.App.Controllers
{
    public class InvestmentManagerSettingController : BaseController
    {
        [HttpPost]

        public ActionResult SaveSetting(InvestmentManagerSetting setting)

        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "SaveInvestmentManagerSetting", Method.POST);
                req.AddJsonBody(new BaseReportFilter<AddInvestmentManagerSettingFilter>
                {
                    ReportFilter = new AddInvestmentManagerSettingFilter
                    {
                        Setting = setting
                    }
                });
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

        public JsonResult GetHistoricalInvestmentManagerSetting([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetAllInvestmentManagerSettings", Method.POST);
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
                var res = req.Exec<ApiPagedCollectionResponse<InvestmentManagerSetting>>(this);

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

        public ActionResult InvestmentManagerSettingsByGuid(string id)
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetInvestmentManagerSettingByGuid", Method.POST);
                req.AddJsonBody(new BaseReportFilter<GeneralSettingFilter>
                {
                    ReportFilter = new GeneralSettingFilter
                    {
                        Guid = id
                    }
                });

                var res = req.Exec<ApiResponse<InvestmentManagerSetting>>(this);
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

        
    }
}