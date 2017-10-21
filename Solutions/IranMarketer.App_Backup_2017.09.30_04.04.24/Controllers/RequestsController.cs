using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Net.Mime;
using System.Reflection;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Mvc;
using AutoMapper.Internal;
using Kendo.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.Infrastructure;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using RestSharp;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Component.Provider;
using IranMarketer.App.Component.ReportProvider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using Request = IranMarketer.Domain.DTO.Request;
using RequestTransactionState = IranMarketer.Domain.Enum.RequestTransactionState;
using RequestTransactionType = IranMarketer.Domain.Enum.RequestTransactionType;

namespace IranMarketer.App.Controllers
{
    public class RequestsController : BaseController
    {
        // GET: Requests
        public ActionResult AllRequests()
        {
            var allRequestModel = new AllRequestModel();
            var request = ApiHelper.Request(ApiAddressProvider.AccountApi + "TokenValidation", Method.POST);
            var res = request.Exec<UserManagement>(this);
            if (res.StatusCode == HttpStatusCode.OK)
            {
                var isAdminRole = res.Data.RoleName.ToLower().Contains(UserRoleType.Admin.ToString().ToLower());
                allRequestModel.IsAdminRole = isAdminRole;
                var isBranchManager = res.Data.RoleName.ToLower().Contains(UserRoleType.BranchManager.ToString().ToLower());
                allRequestModel.IsBranchManager = isBranchManager;
                allRequestModel.CanDelete = isBranchManager || isAdminRole;

            }
            return View(allRequestModel);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateStatus(IEnumerable<Request> models)
        {
            try
            {
                var list = models as IList<Request> ?? models.ToList();
                foreach (var r in list)
                {
                    if (r.CheckToConfirm)
                        r.State = (int)RequestTransactionState.Confirm;
                }
                var req = ApiHelper.Request(ApiAddressProvider.RequestApi + "ChangeRequestStatus", Method.POST);
                req.AddJsonBody(new ApiRequest<List<UpdateRequestState>>
                {
                    Entity = list.Select(x => new UpdateRequestState
                    {
                        RequestId = x.Id,
                        RequestTransactionState = x.StateEnum
                    }).ToList()
                });
                var res = req.Exec<ApiResponse<long>>(this);

                return Json(res.Data);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return Json(new ApiResponse<int>
                {
                    BRuleCode = (int)RuleExceptionCodeCommon.OtherError,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()
                });
            }
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateRejectedByManagerStatus(IEnumerable<Request> models)
        {
            try
            {
                var list = models as IList<Request> ?? models.ToList();
                foreach (var r in list)
                {
                    if (r.CheckToConfirm)
                        r.State = (int)RequestTransactionState.RejectedByManager;
                }
                var req = ApiHelper.Request(ApiAddressProvider.RequestApi + "ChangeRequestStatus", Method.POST);
                req.AddJsonBody(new ApiRequest<List<UpdateRequestState>>
                {
                    Entity = list.Select(x => new UpdateRequestState
                    {
                        RequestId = x.Id,
                        RequestTransactionState = x.StateEnum
                    }).ToList()
                });
                var res = req.Exec<ApiResponse<long>>(this);

                return Json(res.Data);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return Json(new ApiResponse<int>
                {
                    BRuleCode = (int)RuleExceptionCodeCommon.OtherError,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()
                });
            }
        }

        public ActionResult GetAllRequest([DataSourceRequest] DataSourceRequest request, RequestListModel model)
        {
            try
            {

                var req = ApiHelper.Request(ApiAddressProvider.RequestApi + "GetFlatRequests", Method.POST);
                var dto = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<RequestListModel, RequestListFilter>(model);
                dto.DateFilter = new DateFilter
                {
                    StartDate = model.StartDate.IsValidPersianDate()
                        ? Extention.ConvertJalaliToMiladi(model.StartDate)
                        : IranMarketerCustomUtility.MinDate,
                    EndDate = model.EndDate.IsValidPersianDate()
                        ? Extention.ConvertJalaliToMiladi(model.EndDate)
                        : DateTime.Now
                };


                dto.PageSize = request.PageSize;
                dto.PageIndex = request.Page;

                var filter = new BaseReportFilter<RequestListFilter>
                {
                    ReportFilter = dto,


                };
                var lstSort = new List<Sort>();
                if (request.Sorts != null)
                {
                    lstSort = request.Sorts.Select(x => new Sort
                    {
                        dir = x.SortDirection == ListSortDirection.Ascending ? "ASC" : "Desc",
                        field = x.Member.Split('.')[x.Member.Split('.').Length - 1].Replace("DateJalali", "Date").Replace("TransactionTypeTitle", "TransactionType")
                            .Replace("ProcessDateJalali", "ProcessDate").Replace("ConfirmationDateJalali", "ConfirmationDate").Replace("StateTitle", "State")
                            .Replace("SettlementTypeTitle", "SettlementType")
                    }).ToList();

                }

                var optionalfilter = new OptionalFilter
                {
                    page = request.Page,
                    take = request.PageSize,
                    sort = lstSort
                };

                filter.OptionalFilter = optionalfilter;
                req.AddJsonBody(filter);

                var res = req.Exec<ApiPagedCollectionResponse<Request>>(this);

                var aggResult = new DataSourceResult
                {
                    Data = res.Data.Result,
                    Total = (int)res.Data.TotalRecords,
                    AggregateResults = new List<AggregateResult>
                    {
                        new AggregateResult(res.Data.TotalAggrigatedValue2, new SumFunction
                        {
                            Caption = request.Aggregates.FirstOrDefault(x => x.Member == "Volume")?.Aggregates
                                .FirstOrDefault()?.Caption,
                            FunctionName = request.Aggregates.FirstOrDefault(x => x.Member == "Volume")?.Aggregates
                                .FirstOrDefault()?.FunctionName,
                            MemberType = request.Aggregates.FirstOrDefault(x => x.Member == "Volume")?.Aggregates
                                .FirstOrDefault()?.MemberType,
                            SourceField = request.Aggregates.FirstOrDefault(x => x.Member == "Volume")?.Aggregates
                                .FirstOrDefault()?.SourceField,
                            ResultFormatString = res.Data.TotalAggrigatedValue2.ToNullSafeString(),
                        }),
                        new AggregateResult(res.Data.TotalAggrigatedValue1, new SumFunction
                        {
                            Caption = request.Aggregates.FirstOrDefault(x => x.Member == "Amount")?.Aggregates
                                .FirstOrDefault()?.Caption,
                            FunctionName = request.Aggregates.FirstOrDefault(x => x.Member == "Amount")?.Aggregates
                                .FirstOrDefault()?.FunctionName,
                            MemberType = request.Aggregates.FirstOrDefault(x => x.Member == "Amount")?.Aggregates
                                .FirstOrDefault()?.MemberType,
                            SourceField = request.Aggregates.FirstOrDefault(x => x.Member == "Amount")?.Aggregates
                                .FirstOrDefault()?.SourceField,
                            ResultFormatString = res.Data.TotalAggrigatedValue1.ToNullSafeString(),
                        }),
                    }
                };

                var result = Json(aggResult, JsonRequestBehavior.AllowGet);
                result.MaxJsonLength = int.MaxValue;
                return result;
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

        public ActionResult ViewRequest(long? id)
        {
            id = id.SafeLong();
            if (id <= 0)
            {
                return View(new Domain.DTO.Request());
            }
            var req = ApiHelper.Request(ApiAddressProvider.RequestApi + "GetRequest", Method.POST);
            req.AddJsonBody(new ApiRequest<long>
            {
                Entity = id.SafeLong()
            });
            var res = req.Exec<ApiResponse<Domain.DTO.Request>>(this);

            return View(res.Data.Result);


        }
        [HttpPost]
        public ActionResult HasAccessToChangeStatus()
        {
            try
            {
                var request = ApiHelper.Request(ApiAddressProvider.AccountApi + "TokenValidation", Method.POST);
                var res = request.Exec<UserManagement>(this);
                if (res.StatusCode == HttpStatusCode.OK)
                {
                    var allow = res.Data.RoleName.Contains("Admin");//TODO ENum
                    return Json(allow);
                }

                return Json(false);
                // return Json(true);
            }
            catch (Exception)
            {

                return Json(false);
            }


        }
        public ActionResult DeleteRequest(Request request)
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.RequestApi + "DeleteRequest", Method.POST);
                req.AddJsonBody(new ApiRequest<long>
                {
                    Entity = request.Id
                });

                var res = req.Exec<ApiResponse<long>>(this);

                return Json(res.Data, JsonRequestBehavior.AllowGet);

            }
            catch (Exception e)
            {
                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }

        }


        public ActionResult SubscriptionRequest()
        {
            return View();
        }
        public ActionResult RegisterSubscriptionRequest(SubscriptionRequestModel model)
        {
            try
            {

                var mapped = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<SubscriptionRequestModel, SubscriptionRequest>(model);

                if (model.Date.IsValidPersianDate())
                    mapped.Date = Extention.ConvertJalaliToMiladi(model.Date);

                var req = ApiHelper.Request(ApiAddressProvider.SubscriptionRequest + "SaveSubscriptionRequest", Method.POST);
                req.AddJsonBody(new ApiRequest<SubscriptionRequest>
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
        public ActionResult GetCustomerFundDividenAccountRemain(string ledgerCode, string date)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.PartyBalance + "GetCustomerFundDividenAccountRemain", Method.POST);
                req.AddJsonBody(new ApiRequest<AccountBalanceFilter>
                {
                    Entity = new AccountBalanceFilter
                    {
                        DetailLedgerCode = ledgerCode,
                        DateFilter = new DateFilter
                        {
                            EndDate = date.IsValidPersianDate() ? Extention.ConvertJalaliToMiladi(date) : DateTime.Now.AddMonths(-5)
                        }

                    }
                });
                var res = req.Exec<ApiResponse<decimal>>(this);

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





        public ActionResult RedemptionRequest()
        {
            return View();
        }
        public ActionResult RegisterRedemptionReques(RedemptionRequestModel model)
        {

            try
            {

                var mapped = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<RedemptionRequestModel, RedemptionRequest>(model);

                if (model.Date.IsValidPersianDate())
                    mapped.Date = Extention.ConvertJalaliToMiladi(model.Date);
                else
                {
                    mapped.Date = DateTime.Now.AddMonths(-3);
                }
                var req = ApiHelper.Request(ApiAddressProvider.RedemptionRequest + "SaveRedemptionRequest", Method.POST);
                req.AddJsonBody(new ApiRequest<RedemptionRequest>
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
        public ActionResult GetCustomerDatailsForRedemption(int id, string nationalId)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.Evidence + "GetLastEvidence", Method.POST);
                req.AddJsonBody(new ApiRequest<CustomerEvidenceFilter>
                {
                    Entity = new CustomerEvidenceFilter
                    {
                        PartyId = id,
                        NationalId = nationalId,
                        EvidenceType = EvidenceType.Regular
                    }

                });
                var res = req.Exec<ApiResponse<Evidence>>(this);

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
        public ActionResult SubscriptionReceiptPdf(string contentType, string base64, string fileName)
        {

            try
            {


                var req = ApiHelper.Request(ApiAddressProvider.SubscriptionReceipt + "GetSubscriptionReceipt", Method.POST);
                req.AddJsonBody(new ApiRequest<long>
                {
                    Entity = int.Parse(base64)
                });

                var res = req.Exec<ApiResponse<SubscriptionReceipt>>(this).Data.Result;

                var pdfProvider = new SubscriptionReceiptPdfProvider();
                pdfProvider.SetVariables(res);
                var dataArray = pdfProvider.GenerateReport();



                return File(dataArray, "application/pdf", "Report.pdf");

            }
            catch (Exception e)
            {
                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }

        }
        public ActionResult RedemptionReceiptPdf(string contentType, string base64, string fileName)
        {

            try
            {


                var req = ApiHelper.Request(ApiAddressProvider.RedemptionReceipt + "GetRedemptionReceipt", Method.POST);
                req.AddJsonBody(new ApiRequest<long>
                {
                    Entity = int.Parse(base64)
                });

                var res = req.Exec<ApiResponse<RedemptionReceipt>>(this).Data.Result;

                var pdfProvider = new RedemptionReceiptPdfProvider();
                pdfProvider.SetVariables(res);
                var dataArray = pdfProvider.GenerateReport();



                return File(dataArray, "application/pdf", "Report.pdf");

            }
            catch (Exception e)
            {
                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }

        }

        public ActionResult RedemptionStatementPdf(string contentType, string base64, string fileName)
        {

            try
            {

                var req = ApiHelper.Request(ApiAddressProvider.RedemptionStatement + "GetRedemptionStatement", Method.POST);
                req.AddJsonBody(new ApiRequest<long>
                {
                    Entity = int.Parse(base64)
                });

                var res = req.Exec<ApiResponse<RedemptionStatement>>(this).Data.Result;

                var pdfProvider = new RedemptionStatementPdfProvider();
                pdfProvider.SetVariables(res);
                var dataArray = pdfProvider.GenerateReport();

                return File(dataArray, contentType, fileName);

            }
            catch (Exception e)
            {
                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }

        }
        public ActionResult SubscriptionStatementPdf(string contentType, string base64, string fileName)
        {

            try
            {

                var req = ApiHelper.Request(ApiAddressProvider.SubscriptionStatement + "GetSubscriptionStatement", Method.POST);
                req.AddJsonBody(new ApiRequest<long>
                {
                    Entity = int.Parse(base64)
                });

                var res = req.Exec<ApiResponse<SubscriptionStatement>>(this).Data.Result;

                var pdfProvider = new SubscriptionStatementPdfProvider();
                pdfProvider.SetVariables(res);
                var dataArray = pdfProvider.GenerateReport();

                return File(dataArray, contentType, fileName);

            }
            catch (Exception e)
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