using RestSharp;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Component.Provider;
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
using Kendo.Mvc;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.App.Controllers
{
    public class ProductController : Controller
    {
        public ApiHelper ApiHelper = new ApiHelper();
   
     

        public ActionResult GetProductByFilter(string text = "")
        {
            try
            {
                RestRequest req = null;
                req = ApiHelper.Request(ApiAddressProvider.ProductApi + "searchproducts", Method.POST);


                var requestObj = new ApiRequest<SearchProductFilter>
                {
                    Entity = new SearchProductFilter
                    {
                        SearchPhrase = text
                    }
                };
                req.AddJsonBody(requestObj);
                var res = req.Exec<ApiResponse<List<Product>>>(this);
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

        public ActionResult GetProductAutoCompleteFilter([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var text = "";
                if (request.Filters.Count > 0)
                {
                    text = (((FilterDescriptor)(request.Filters[0])).Value).ToString();
                    request.Filters.RemoveAt(0);
                }

                if (string.IsNullOrEmpty(text))
                {
                    text = "";
                }
                var req = ApiHelper.Request(ApiAddressProvider.ProductApi + "SearchProducts", Method.POST);
                var requestObj = new BaseReportFilter<SearchProductFilter>
                {
                    ReportFilter = new SearchProductFilter()
                    {
                        SearchPhrase = text
                    }
                };

                req.AddJsonBody(requestObj);
                var res = req.Exec<ApiPagedCollectionResponse<Product>>(this);
                var mapped = res.Data.Result.Select(ObjectMapper.BaseConverter.ConvertSourceToDest<Product, Product>);

                return Json(mapped.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
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