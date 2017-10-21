using Pikad.Framework.Infra.Utility;
using RestSharp;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Component.Provider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kendo.Mvc.UI;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Filters;
using CustomerPayment = IranMarketer.Domain.DTO.CustomerPayment;

namespace IranMarketer.App.Controllers
{
    public class CashFlowController : BaseController
    {
        // GET: BankTransfer
        public ActionResult BankTransfer()
        {
            ViewBag.Now = DateTime.Now.ConvertMiladiToJalali(false);
            return View();
        }

        public ActionResult SubmitBankTransfer(BankTransferModel model)
        {
            try
            {

                var mapped = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<BankTransferModel, BankTransfer>(model);

                if (model.Date.IsValidPersianDate())
                    mapped.Date = model.Date.ConvertJalaliToMiladi();

                var req = ApiHelper.Request(ApiAddressProvider.BankTransferApi + "SaveBankTransfer", Method.POST);
                req.AddJsonBody(new ApiRequest<BankTransfer>
                {
                    Entity = mapped
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


        public ActionResult BankDepositProfit()
        {
            ViewBag.Now = DateTime.Now.ConvertMiladiToJalali(false);
            return View();
        }

        public ActionResult SaveBankDepositProfit(BankDepositProfitModel model)
        {
            try
            {

                var mapped = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<BankDepositProfitModel, BankDepositProfitReceive>(model);

                if (model.Date.IsValidPersianDate())
                    mapped.Date = model.Date.ConvertJalaliToMiladi();

                var req = ApiHelper.Request(ApiAddressProvider.BankDepositProfitApi + "SaveBankDepositProfitReceive", Method.POST);
                req.AddJsonBody(new ApiRequest<BankDepositProfitReceive>
                {
                    Entity = mapped
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

        public ActionResult CustomerPayments()
        {
            ViewBag.Now = DateTime.Now.ConvertMiladiToJalali(false);
            return View();
        }

        [HttpPost]
        public ActionResult GetCustomerPayments([DataSourceRequest] DataSourceRequest reques, CustomerPaymentsFilterModel model)
        {
            try
            {
                var request = ApiHelper.Request(ApiAddressProvider.CutomerPaymentApi + "GetCustomerPayments", Method.POST);

                var filter = new CustomerPaymentsReportFilter
                {
                    PartyType = model.PartyType,
                    PartyId = model.PartyId,
                    ToRemain = model.ToRemain > 0 ? model.ToRemain : 0,
                    FromRemain = model.FromRemain > 0 ? model.FromRemain : 0,
                    DateFilter = new DateFilter
                    {
                        EndDate = model.Date.ConvertJalaliToMiladi()
                    
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

                if (model.PaymentTypes > 0)
                {
                    filter.CustomerPaymentTypes =
                        new List<CustomerPaymentType>
                        {
                            ((CustomerPaymentType)model.PaymentTypes)
                        };

                }

                var optionalfilter = new OptionalFilter
                {
                    page = reques.Page,
                    take = reques.PageSize,
                    sort = lstSort
                };
                request.AddJsonBody(new BaseReportFilter<CustomerPaymentsReportFilter>
                {
                    ReportFilter = filter,
                    OptionalFilter = optionalfilter

                });


                var res = request.Exec<ApiPagedCollectionResponse<CustomerPayment>>(this);
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


        [HttpPost]
        public ActionResult SaveCustomerPayments(CustomerPaymentItemModel model)
        {
            try
            {
                var customerPaymentItems = new List<CustomerPaymentItem>();

                foreach (var modelSelectItem in model.SelectItems)
                {
                    var items = modelSelectItem.Split('-');
                    var customerPaymentItem = new CustomerPaymentItem
                    {
                        Amount = items[5].SafeDecimal(),
                        BankDepositId = model.BankDepositId,
                        ChequeNumber = model.ChequeNumber,
                        Date = model.Date.ConvertJalaliToMiladi(),
                        DueDate = !string.IsNullOrEmpty(model.DueDate)
                            ? model.DueDate?.ConvertJalaliToMiladi().SafeDateTime()
                            : null,
                        PartyId = items[0].SafeLong(),
                        DetailLedgerId = items[1].SafeLong(),
                        DetailLedgerCode = items[2].SafeString(),
                        SubsidiaryLedgerId = items[3].SafeLong(),
                        SubsidiaryLedgerCode = items[4].SafeString(),
                        TotalAmount = model.TotalAmount
                    };
                    customerPaymentItems.Add(customerPaymentItem);

                }

                var req = ApiHelper.Request(ApiAddressProvider.CutomerPaymentApi + "SaveCustomerPayments", Method.POST);
                req.AddJsonBody(new ApiRequest<List<CustomerPaymentItem>>
                {
                    Entity = customerPaymentItems
                });
                var res = req.Exec<ApiResponse<long>>(this);
                return Json(res.Data);
            }
            catch (Exception ex)
            {
                return Json(new ApiResponse<long>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()
                });
            }
        }


        public ActionResult CashFlows()
        {
            return View();
        }

        public ActionResult GetFlatCashFlowMasters([DataSourceRequest] DataSourceRequest reques, CashFlowMasterReportModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.CashFlowApi + "GetFlatCashFlowMasters", Method.POST);

                var filter = new CashFlowMasterReportFilter
                {
                    Category = model.Category,
                    TransactionState = model.State,
                    TransactionType = model.TransactionType,
                    DateFilter = new DateFilter
                    {
                       

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
                req.AddJsonBody(new BaseReportFilter<CashFlowMasterReportFilter>
                {
                    ReportFilter = filter,
                    OptionalFilter = optionalfilter

                });
                var res = req.Exec<ApiPagedCollectionResponse<Domain.DTO.CashFlowMaster>>(this);
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
    }
}