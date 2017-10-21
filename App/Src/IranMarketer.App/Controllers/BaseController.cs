using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.Mvc;
using Pikad.Framework.Infra.Logging;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.ReportProvider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;

namespace IranMarketer.App.Controllers
{
    public class BaseController : Controller
    {
        public  CustomLogger Logger=>new CustomLogger(GetType().FullName);
        protected const string AddAllTitle = "همه";
        protected const int AddAllValue = -1;

        public readonly ApiResponse<object> SuccessApiResponse;
        public readonly ApiResponse<object> ErrorApiResponse;


        public ApiHelper ApiHelper = new ApiHelper();

        public BaseController()
        {
            SuccessApiResponse = new ApiResponse<object>
            {
                BRuleCode = (int) RuleExceptionCodeCommon.ValidResult,
                Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
            };

            ErrorApiResponse = new ApiResponse<object>
            {
                BRuleCode = 1,
                Message ="خطا در انجام عملیات"
            };
        }
        [HttpPost]
        public virtual  ActionResult CustomExcelReport(string contentType, string base64, string fileName)
        {

            var p = new BaseExcelProvider(contentType, base64, fileName);
            return File(p.Export(), contentType, fileName);
        }




    }
}