using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using RestSharp;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Component.Provider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;

namespace IranMarketer.App.Controllers
{
    public class TradeController : BaseController
    {
        // GET: Trade
        public ActionResult Trades()
        {
            return View();
        }

        public ActionResult GetTrades([DataSourceRequest] DataSourceRequest reques, TradeReportModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.TradeApi + "GetTrades", Method.POST);


                var filter = new TradeReportFilter
                {
                    BrokerCode = model.BrokerCode,
                    ProductId = model.ProductId,
                    TransactionType = model.TradeType,
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
                req.AddJsonBody(new BaseReportFilter<TradeReportFilter>
                {
                    ReportFilter = filter,
                    OptionalFilter = optionalfilter

                });
                var res = req.Exec<ApiPagedCollectionResponse<Domain.DTO.SecurityTransaction>>(this);
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