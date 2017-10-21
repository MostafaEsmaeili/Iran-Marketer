using RestSharp;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.Domain.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attrebute;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Filters;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using IranMarketer.App.Component.Provider;

namespace IranMarketer.App.Controllers
{
    public class AdjustedPriceController : Controller
    {
        public ApiHelper ApiHelper = new ApiHelper();
        // GET: AdjustmentsPrice

        public ActionResult Index()
        {
            var list = Enum.GetValues(typeof(AdjustedPriceReason)).Cast<AdjustedPriceReason>();

            List<AdjustedPriceReasonModel> dto = list.Select(l => new AdjustedPriceReasonModel
            {
                ID = (int)l,
                Title = l.GetEnumDescription(),
            }).ToList();

            ViewData["AdjustedPriceReasons"] = dto;
           
            return View();
        }


        public JsonResult GetAdjustedPrices([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.AdjustedPrice + "GetAdjustedPrices", Method.POST);
                var res = req.Exec<ApiResponse<List<Domain.DTO.AdjustedPrice>>>(this);
                return Json(res.Data.Result.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        [HttpPost]
        public ActionResult SaveAdjustedPrice(AdjustedPriceModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.AdjustedPrice + "SaveAdjustedPrice", Method.POST);
                var dto = new Domain.DTO.AdjustedPrice
                {
                    Description = model.Description,
                    Value = model.Value,
                    Type = model.Type,
                    ProductId = model.ProductId,
                    FromDate = model.FromDateJalali.ConvertJalaliToMiladi().Value,
                    SecurityExchangeId = 1
                };

                if (!string.IsNullOrEmpty(model.ToDateJalali))
                {
                    dto.ToDate = model.ToDateJalali.ConvertJalaliToMiladi().Value;
                }
                else
                {
                    dto.ToDate = null;
                }
                dto.AdjustedPriceReasons = new List<AdjustedPriceReason>();
                foreach (var i in model.AdjustedPriceReasonsId)
                {
                    dto.AdjustedPriceReasons.Add((AdjustedPriceReason)i);
                }


                req.AddJsonBody(new ApiRequest<Domain.DTO.AdjustedPrice>
                {
                    Entity = dto
                });
                //public DateTime Created { get; set; }
                //public string ISIN { get; set; }
                //public DateTime Modified { get; set; }

                // public string ProductTitle { get; set; }
                //public string Reason { get; set; }


                var res = req.Exec<ApiResponse<int>>(this);
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
        public ActionResult UpdateAdjustedPrice(AdjustedPriceModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.AdjustedPrice + "UpdateAdjustedPrice", Method.POST);

                var dto = new Domain.DTO.AdjustedPrice();
                dto.Id = model.Id;
                dto.Description = model.Description;
                dto.Value = model.Value;
                dto.Type = model.Type;
                dto.ProductId = model.ProductId;
                dto.FromDate = model.FromDateJalali.ConvertJalaliToMiladi().Value;
                dto.SecurityExchangeId = 1;
                if (!string.IsNullOrEmpty(model.ToDateJalali))
                {
                    dto.ToDate = model.ToDateJalali.ConvertJalaliToMiladi().Value;
                }
                else
                {
                    dto.ToDate = null;
                }
                dto.AdjustedPriceReasons = new List<AdjustedPriceReason>();
                foreach (var i in model.AdjustedPriceReasonsId)
                {
                    dto.AdjustedPriceReasons.Add((AdjustedPriceReason)i);
                }


                req.AddJsonBody(new ApiRequest<Domain.DTO.AdjustedPrice>
                {
                    Entity = dto
                });
                //public DateTime Created { get; set; }
                //public string ISIN { get; set; }
                //public DateTime Modified { get; set; }

                // public string ProductTitle { get; set; }
                //public string Reason { get; set; }


                var res = req.Exec<ApiResponse<int>>(this);
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