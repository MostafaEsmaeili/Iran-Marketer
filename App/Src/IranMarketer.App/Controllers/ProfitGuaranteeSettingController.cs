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
using ProfitGuaranteeSetting = IranMarketer.Domain.DTO.ProfitGuaranteeSetting;

namespace IranMarketer.App.Controllers
{
    public class ProfitGuaranteeSettingController : BaseController
    {
        [HttpPost]

        public ActionResult SaveSetting(Domain.DTO.ProfitGuaranteeSetting setting)

        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "SaveProfitGuaranteeSetting", Method.POST);
                req.AddJsonBody(new BaseReportFilter<AddProfitGuaranteeSettingFilter>
                {
                    ReportFilter = new AddProfitGuaranteeSettingFilter
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

        public JsonResult GetHistoricalProfitGuaranteeSettings([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetAllProfitGuaranteeSettings", Method.POST);
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
                var res = req.Exec<ApiPagedCollectionResponse<Domain.DTO.ProfitGuaranteeSetting>>(this);

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

        public ActionResult ProfitGuaranteeSettingsByGuid(string id)
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetProfitGuaranteeSettingByGuid", Method.POST);
                req.AddJsonBody(new BaseReportFilter<GeneralSettingFilter>
                {
                    ReportFilter = new GeneralSettingFilter
                    {
                        Guid = id
                    }
                });

                var res = req.Exec<ApiResponse<ProfitGuaranteeSetting>>(this);
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