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
using LiquidityGuaranteeFee = IranMarketer.Domain.DTO.LiquidityGuaranteeFee;
using LiquidityGuaranteeSetting = IranMarketer.Domain.DTO.LiquidityGuaranteeSetting;
using ProfitGuaranteeSetting = IranMarketer.Domain.DTO.ProfitGuaranteeSetting;

namespace IranMarketer.App.Controllers
{
    public class LiquidityGuaranteeSettingController : BaseController
    {
        [HttpPost]

        public ActionResult SaveSetting(Domain.DTO.LiquidityGuaranteeSetting setting)

        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "SaveLiquidityGuaranteeSetting", Method.POST);
                req.AddJsonBody(new BaseReportFilter<AddLiquidityGuaranteeSettingFilter>
                {
                    ReportFilter = new AddLiquidityGuaranteeSettingFilter
                    {
                        Setting = setting
                    }
                });

                var res = req.Exec<ApiResponse<object>>(this);
                TempData["TempLiquidityGuaranteeSetting1"] = null;
                TempData["TempLiquidityGuaranteeSetting2"] = null;

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

        public JsonResult GetHistoricalLiquidityGuaranteeSettings([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetAllLiquidityGuaranteeSettings", Method.POST);
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
                var res = req.Exec<ApiPagedCollectionResponse<Domain.DTO.LiquidityGuaranteeSetting>>(this);

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

        public ActionResult LiquidityGuaranteeSettingsByGuid(string id)
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetLiquidityGuaranteeSettingByGuid", Method.POST);
                req.AddJsonBody(new BaseReportFilter<GeneralSettingFilter>
                {
                    ReportFilter = new GeneralSettingFilter
                    {
                        Guid = id
                    }
                });

                var res = req.Exec<ApiResponse<LiquidityGuaranteeSetting>>(this);

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