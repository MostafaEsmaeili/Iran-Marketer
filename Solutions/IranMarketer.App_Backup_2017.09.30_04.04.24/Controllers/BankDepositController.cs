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
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.App.Component.Model;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.App.Controllers
{
    public class BankDepositController : BaseController
    {
        // GET: BankDeposit
        public ActionResult BankDeposits()
        {
            return View();
        }

        

        public ActionResult AddBankDeposits()
        {
            return View(new BankDeposit());
        }


        public ActionResult UpdateBankDeposit(int? id)
        {
            try
            {
                if (id <= 0 || id == null)
                {
                    return View(new BankDeposit());
                }

                var req = ApiHelper.Request(ApiAddressProvider.BankDepositApi + "GetAllBankDeposites", Method.POST);
                req.AddJsonBody(new BaseReportFilter<ReportFilter>());
                var res = req.Exec<ApiPagedCollectionResponse<BankDeposit>>(this);

                var model = res.Data.Result.FirstOrDefault(x => x.Id == id);
                return View(model);
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
        [HttpPost]
        public ActionResult UpdateAccount(BankDeposit BankDeposit)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.BankDepositApi + "UpdateBankDeposit", Method.POST);
                req.AddJsonBody(new ApiRequest<BankDeposit>
                {
                    Entity = BankDeposit

                });
                var res = req.Exec<ApiResponse<int>>(this);

                return Json(res.Data);
            }
            catch (Exception)
            {
                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
        [HttpPost]
        public ActionResult AddBankDeposits(BankDeposit model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.BankDepositApi + "SaveBankDeposit", Method.POST);
                req.AddJsonBody(new ApiRequest<BankDeposit>
                {
                    Entity = model

                });
                var res = req.Exec<ApiResponse<int>>(this);

                return Json(res.Data);
            }
            catch (Exception)
            {
                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }

        }

        public ActionResult GetAllBankDeposits([DataSourceRequest] DataSourceRequest request)
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.BankDepositApi + "GetAllBankDeposites", Method.POST);
                req.AddJsonBody(new BaseReportFilter<ReportFilter>());
                var res = req.Exec<ApiPagedCollectionResponse<BankDeposit>>(this);

                return Json(res.Data.Result.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
        public ActionResult GetActiveBankDepositsForReqeust()
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.BankDepositApi + "GetActiveBankDepositsForReqeust", Method.POST);
                req.AddJsonBody(new BaseReportFilter<ReportFilter>());
                var res = req.Exec<ApiResponse<List<BankDeposit>>>(this);

                return Json(res.Data.Result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
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