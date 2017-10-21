using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using RestSharp;
using IranMarketer.App.Attrebute;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Component.Provider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO.Setting;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;

namespace IranMarketer.App.Controllers
{

    public class GeneralFundSettingController : BaseController
    {
        // GET: GeneralFundSetting

        public ActionResult SettingManagement()
        {
            return View(new GeneralFundSetting());
        }
        [HttpPost]

        public ActionResult SaveSetting(GeneralFundSettingModel setting)

        {
            try
            {
                var model = new GeneralFundSetting
                {
                    ActivityFromDate = setting.ActivityFromDate,
                    ActivitytoDate = setting.ActivitytoDate,
                    BoardMembersMaxUnits = setting.BoardMembersMaxUnits.SafeDouble(),
                    BourseCode = setting.BourseCode,
                    CompanyRegisterNumber = setting.CompanyRegisterNumber,
                    DateOfPortfolioManagementLicense = setting.DateOfPortfolioManagementLicense,
                    DayOfProfitSharing = setting.DayOfProfitSharing,
                    DividendGuarantee = setting.DividendGuarantee,
                    DividendGuaranteeTitle = setting.DividendGuaranteeTitle,
                    DividendPeriod = setting.DividendPeriod,
                    DividendPeriodTitle = setting.DividendPeriodTitle,
                    EstablishmentLicenseDate = setting.EstablishmentLicenseDate,
                    FundEnglishName = setting.FundEnglishName,
                    FundMaxUints = setting.FundMaxUints,
                    FundMinRequest = setting.FundMinRequest,
                    FundNav = setting.FundNav,
                    FundSize = setting.FundSize,
                    FundTitle = setting.FundTitle,
                    FundSizeTitle = setting.FundSizeTitle,
                    FundType = setting.FundType,
                    FundTypeTitle = setting.FundTypeTitle,
                    MinUnit = setting.MinUnit,
                    NationalIdentification = setting.NationalIdentification,
                    NoneFundBoardMembersMaxUnitsType = setting.NoneFundBoardMembersMaxUnitsType.SafeDouble(),
                    PrefferedUnitCount = setting.PrefferedUnitCount,
                    ProprietaryFundName = setting.ProprietaryFundName,
                    RegularUnitCount = setting.RegularUnitCount,
                    SeoRegisterNumber = setting.SeoRegisterNumber
                };

                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "SaveGeneralFundSetting", Method.POST);
                req.AddJsonBody(new BaseReportFilter<AddGeneralSettingFilter>
                {
                    ReportFilter = new AddGeneralSettingFilter
                    {
                        Setting = model
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

        public JsonResult GetHistoricalGeneralFundSettings([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetAllGeneralFundSettings", Method.POST);
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
                var res = req.Exec<ApiPagedCollectionResponse<GeneralFundSetting>>(this);

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

        [HttpGet]

        public ActionResult GeneralFundSettingsByGuid(string id)
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetGeneralFundSettingByGuid", Method.POST);
                req.AddJsonBody(new BaseReportFilter<GeneralSettingFilter>
                {
                    ReportFilter = new GeneralSettingFilter
                    {
                        Guid = id
                    }
                });
                var res = req.Exec<ApiResponse<GeneralFundSetting>>(this);
                return SettingManagements(res.Data.Result);
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

        public ActionResult SettingManagements(GeneralFundSetting model)
        {
            return View("SettingManagement", model);
        }
    }
}