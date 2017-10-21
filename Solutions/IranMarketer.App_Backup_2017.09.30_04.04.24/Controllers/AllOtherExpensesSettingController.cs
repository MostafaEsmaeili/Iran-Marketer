using System;
using System.Collections.Generic;
using System.Globalization;
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
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using CustodianSetting = IranMarketer.Domain.DTO.CustodianSetting;

namespace IranMarketer.App.Controllers
{
    public class AllOtherExpensesSettingController : BaseController
    {
        [HttpPost]

        public ActionResult SaveSetting(AllOtherExpensesModel setting)

        {
            try

            {
                var filter = new AllOtherExpenses
                {
                    ClubMembershipCostSetting = setting.ClubMembershipCostSetting,
                    EstablishmentCostSetting = setting.EstablishmentCostSetting,
                    FundSettlementCostSetting = setting.FundSettlementCostSetting,
                    GAMCostSetting = setting.GAMCostSetting,
                    OtherExpensesMaxSetting = setting.OtherExpensesMaxSetting,
                    SoftwareAndAccessCostSetting = setting.SoftwareAndAccessCostSetting,
                    RequestFeeSetting = new RequestFeeSetting
                    {
                        MaxOfRedemptionVariableWageFactor = setting.RequestFeeSetting.MaxOfRedemptionVariableWageFactor,
                        MaxOfubscriptionVariableWageFactor = setting.RequestFeeSetting.MaxOfubscriptionVariableWageFactor,
                        RedemptionFixedWage = setting.RequestFeeSetting.RedemptionFixedWage,
                        RedemptionVariableWageFactor = setting.RequestFeeSetting.MaxOfRedemptionVariableWageFactor,
                        SubscriptionFixedWage = setting.RequestFeeSetting.SubscriptionFixedWage,
                        SubscriptionVariableWageFactor = setting.RequestFeeSetting.SubscriptionVariableWageFactor,
                        RequestVaidateFromTime = setting.RequestFeeSetting.RequestVaidateFromTime?.ToString("hh:mm tt", CultureInfo.CreateSpecificCulture("fa-IR")) ?? null,
                        RequestVaidateToTime = setting.RequestFeeSetting.RequestVaidateToTime?.ToString("hh:mm tt", CultureInfo.CreateSpecificCulture("fa-IR")) ?? null,
                        Penalty1 = new Domain.Entity.RedemptionPenalty()
                        {
                            MaxDate = setting.RequestFeeSetting.Penalty1?.MaxDate ?? 0,
                            Percent = setting.RequestFeeSetting.Penalty1?.Percent?.SafeDouble() ?? 0,
                        },
                        Penalty2 = new Domain.Entity.RedemptionPenalty()
                        {
                            MaxDate = setting.RequestFeeSetting.Penalty2?.MaxDate ?? 0,
                            Percent = setting.RequestFeeSetting.Penalty2?.Percent?.SafeDouble() ?? 0,
                        },
                        Penalty3 = new Domain.Entity.RedemptionPenalty()
                        {
                            MaxDate = setting.RequestFeeSetting.Penalty3?.MaxDate ?? 0,
                            Percent = setting.RequestFeeSetting.Penalty3?.Percent?.SafeDouble() ?? 0,
                        },
                        Penalty4 = new Domain.Entity.RedemptionPenalty()
                        {
                            MaxDate = setting.RequestFeeSetting.Penalty4?.MaxDate ?? 0,
                            Percent = setting.RequestFeeSetting.Penalty4?.Percent?.SafeDouble() ?? 0,
                        },
                        Penalty5 = new Domain.Entity.RedemptionPenalty()
                        {
                            MaxDate = setting.RequestFeeSetting.Penalty5?.MaxDate ?? 0,
                            Percent = setting.RequestFeeSetting.Penalty5?.Percent?.SafeDouble() ?? 0,
                        }
                    }


                };


                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "SaveAllOtherExpensesSetting", Method.POST);
                req.AddJsonBody(new BaseReportFilter<AddAllOtherExpensesSettingFilter>
                {
                    ReportFilter = new AddAllOtherExpensesSettingFilter
                    {
                        Setting = filter
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

        public JsonResult GetHistoricalAllOtherExpenses([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetAllOtherExpensesSetting", Method.POST);
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
                var res = req.Exec<ApiPagedCollectionResponse<AllOtherExpenses>>(this);

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

        public JsonResult IsConsiderFixedFeeForSubscription()
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetAllOtherExpensesSetting", Method.POST);
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
                var res = req.Exec<ApiPagedCollectionResponse<AllOtherExpenses>>(this);
                var fee = res.Data.Result.FirstOrDefault()?.RequestFeeSetting;
                if (fee==null)
                {
                    return Json(new ApiResponse<bool>
                    {
                        Result = false,
                        Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
                        BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
                    });

                }
                if (fee.SubscriptionFixedWage>0 || fee.SubscriptionVariableWageFactor>0 || fee.MaxOfubscriptionVariableWageFactor>0)
                {
                    return Json(new ApiResponse<bool>
                    {
                        Result = true,
                        Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
                        BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
                    });
                }
                return Json(new ApiResponse<bool>
                {
                    Result = false,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
                });

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


        public JsonResult IsConsiderFixedFeeForRedemption()
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.SettingApi + "GetAllOtherExpensesSetting", Method.POST);
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
                var res = req.Exec<ApiPagedCollectionResponse<AllOtherExpenses>>(this);
                var fee = res.Data.Result.FirstOrDefault()?.RequestFeeSetting;
                if (fee == null)
                {
                    return Json(new ApiResponse<bool>
                    {
                        Result = false,
                        Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
                        BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
                    });

                }
                if (fee.RedemptionFixedWage > 0 || fee.RedemptionVariableWageFactor > 0 || fee.MaxOfRedemptionVariableWageFactor > 0)
                {
                    return Json(new ApiResponse<bool>
                    {
                        Result = true,
                        Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
                        BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
                    });
                }
                return Json(new ApiResponse<bool>
                {
                    Result = false,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
                });

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