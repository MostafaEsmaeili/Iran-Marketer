using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using RestSharp;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Component.Provider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.Domain.Entity;

namespace IranMarketer.App.Controllers
{
    public class NAVController : BaseController
    {
        // GET: NAV
        public ActionResult NAVList()
        {
            return View();
        }

        public ActionResult NAVListExcelReport()
        {
            return View("NAVList");
        }

        public ActionResult GetNavList([DataSourceRequest] DataSourceRequest reques, NAVListMasterSearchModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.NAVApi + "GetNavList", Method.POST);


                var filter = new FlatVoucherMasterReportFilter
                {
                    DateFilter = new DateFilter
                    {
                        EndDate = CustomExtention.ConvertJalaliToMiladi(model.ToDate)
                            .GetValueOrDefault(DateTime.Now.AddDays(0)).RemoveMinutes(),
                        StartDate = CustomExtention.ConvertJalaliToMiladi(model.FromDate)
                            .GetValueOrDefault(DateTime.Now.AddDays(-14).RemoveMinutes()),

                    },
                    PageSize = reques.PageSize,
                    PageIndex = reques.Page
                };
                var lstSort = new List<Sort>();
                if (reques.Sorts != null)
                {
                    lstSort = reques.Sorts.Select(x => new Sort
                    {
                        dir = x.SortDirection == ListSortDirection.Ascending ? "ASC" : "Desc",
                        field = x.Member.Split('.')[x.Member.Split('.').Length - 1]
                    }).ToList();
                }

                var optionalfilter = new OptionalFilter
                {
                    page = reques.Page,
                    take = reques.PageSize,
                    sort = lstSort
                };
                req.AddJsonBody(new BaseReportFilter<FlatVoucherMasterReportFilter>
                {
                    ReportFilter = filter,
                    OptionalFilter = optionalfilter

                });
                var res = req.Exec<ApiPagedCollectionResponse<NAVModel>>(this);
                //var final = res.Data.Result.ToDataSourceResult(reques);
                //final.Total = (int)res.Data.TotalRecords;
                return Json(res.Data, JsonRequestBehavior.AllowGet);
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



        public ActionResult CloseNAV()
        {
            var model = new CloseNAVModel();
            var req = ApiHelper.Request(ApiAddressProvider.NAVApi + "GetLastNav", Method.POST);
            var res = req.Exec<ApiResponse<NAV>>(this);

            if (res.Data.Result != null)
            {
                var days = IranMarketerCustomUtility.GetPersianDatesDiff(res.Data.Result.Date,
                    DateTime.Now.RemoveMinutes());
                model.EndCloseNAVDate = Extention.ConvertMiladiToJalali(res.Data.Result.Date.AddDays(days));
                model.StartCloseNAVDate = Extention.ConvertMiladiToJalali(res.Data.Result.Date.AddDays(1));
                model.TotalUnits = res.Data.Result.TotalUnit;
                model.LastNAVDate = Extention.ConvertMiladiToJalali(res.Data.Result.Date);
                model.LastStaticalNAV = res.Data.Result.StaticalNAV;
                model.LastRedemptionNAV = res.Data.Result.RedemptionNAV;
                model.LastSubscriptionNAV = res.Data.Result.SubscriptionNAV;
                req = ApiHelper.Request(ApiAddressProvider.GeneralLedgerApi + "GetBrokerCashAccountRemain", Method.POST);
                req.AddJsonBody(new ApiRequest<DateTime>
                {
                    Entity = res.Data.Result.Date
                });
                var resRemain = req.Exec<ApiResponse<decimal>>(this);
                model.BrokerAccountRemain = resRemain.Data.Result;

                req = ApiHelper.Request(ApiAddressProvider.RequestApi + "GetRequestVolumes", Method.POST);
                req.AddJsonBody(new ApiRequest<RequestStatusFilter>
                {
                    Entity = new RequestStatusFilter
                    {
                        Date = res.Data.Result.Date.AddDays(1),
                        RequestTransactionState = RequestTransactionState.Confirm,
                        RequestTransactionType = RequestTransactionType.Redemption
                        
                    }
                });
                var requestVolumes = req.Exec<ApiResponse<decimal>>(this);
                model.RedemptionVolume = requestVolumes.Data.Result;

                req = ApiHelper.Request(ApiAddressProvider.RequestApi + "GetRequestAmounts", Method.POST);
                req.AddJsonBody(new ApiRequest<RequestStatusFilter>
                {
                    Entity = new RequestStatusFilter
                    {
                        Date = res.Data.Result.Date.AddDays(1),
                        RequestTransactionState = RequestTransactionState.Confirm,
                        RequestTransactionType = RequestTransactionType.Subscription
                    }
                });
                var requestValues = req.Exec<ApiResponse<decimal>>(this);
                model.SubscriptionValue = requestValues.Data.Result;
            }
            return View(model);
        }

 
    }
}