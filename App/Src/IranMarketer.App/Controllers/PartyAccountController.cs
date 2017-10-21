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
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using DataSourceRequest = Kendo.DynamicLinq.DataSourceRequest;
using PartyBankAccount = IranMarketer.Domain.Entity.PartyBankAccount;

namespace IranMarketer.App.Controllers
{

    public class PartyAccountController : BaseController
    {
        // GET: PartyAccount
  

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetPartyBankAccountByPartyId([DataSourceRequest] Kendo.Mvc.UI.DataSourceRequest request , int id )
        {
            try
            {
                var res = GetPartuAccount(id);

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
        public ActionResult GetDefaultPartyAccount( int id)
        {
            try
            {
                var allAccounts = GetPartuAccount(id);

                var res=new ApiResponse<PartyBankAccount>
                {
                    Result = allAccounts.Data.Result.FirstOrDefault(x=>x.IsDefault),
                    Message = allAccounts.Data.Message,
                    BRuleCode = allAccounts.Data.BRuleCode
                };
               
                return Json(res, JsonRequestBehavior.AllowGet);
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
        [NonAction]
        public IRestResponse<ApiResponse<List<PartyBankAccount>>> GetPartuAccount(int id)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.PartyBankAccount + "GetPartyBankAccountByPartyId", Method.POST);
                req.AddJsonBody(new ApiRequest<long>
                {
                    Entity = id
                });
                var res = req.Exec<ApiResponse<List<PartyBankAccount>>>(this);
                return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw;
            }
        }

        public ActionResult SavePartyAccount(PartyBankAccount request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.PartyBankAccount + "SavePartyBankAccount", Method.POST);
                req.AddJsonBody(new ApiRequest<PartyBankAccount>
                {
                    Entity = request
                });
                var res = req.Exec<ApiResponse<object>>(this);

                return Json(res.Data, JsonRequestBehavior.AllowGet);
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


        public ActionResult UpdatePartyBankAccount(PartyBankAccount request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.PartyBankAccount + "UpdatePartyBankAccount", Method.POST);
                req.AddJsonBody(new ApiRequest<PartyBankAccount>
                {
                    Entity = request
                });
                var res = req.Exec<ApiResponse<object>>(this);

                return Json(res.Data, JsonRequestBehavior.AllowGet);
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