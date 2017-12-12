using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attribute;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Provider;
using IranMarketer.App.Helper;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.SharedData;
using Kendo.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using RestSharp;

namespace IranMarketer.App.Controllers
{
    [AdminAuthenticationAttrebute]
    public class AdminPanelController : BaseController
    {
        // GET: AdminPanel
        //public ActionResult Industry()
        //{
        //    return View();
        //}
        public IndustryProvider IndustryProvider => CoreContainer.Container.Resolve<IndustryProvider>();
        public AcademicFieldProvider AcademicFieldProvider => CoreContainer.Container.Resolve<AcademicFieldProvider>();
        public JobCategoryProvider JobCategoryProvider => CoreContainer.Container.Resolve<JobCategoryProvider>();
        public ActionResult AdminArea()
        {
            return View();
        }
        public ActionResult GetIndustries([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var res = IndustryProvider.GetAll().ToList();
                return Json(res.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
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
        public ActionResult SaveOrUpdateIndustries(Industry model)
        {
            try
            {
                if (model.Id > 0)
                {
                    var current = IndustryProvider.GetKey(model.Id);
                    model.Modified = DateTime.Now;
                    model.ModifiedBy = User.Identity.GetUserName();
                    model.Created = current.Created;
                    model.CreatedBy = current.CreatedBy;
                }
                else
                {
                    model.Created = DateTime.Now;
                    model.Modified = DateTime.Now;
                    model.CreatedBy = User.Identity.GetUserName();
                }
                var result = IndustryProvider.SaveOrUpdate(model);
                return Json(SuccessApiResponse);
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
        public ActionResult GetAcademicFields([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var res = AcademicFieldProvider.GetAll();
                return Json(res.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
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
        public ActionResult SaveOrUpdateAcademicField(AcademicField model)
        {
            try
            {
                if (model.Id > 0)
                {
                    var current = AcademicFieldProvider.GetKey(model.Id);
                    model.Modified = DateTime.Now;
                    model.ModifiedBy = User.Identity.GetUserName();
                    model.Created = current.Created;
                    model.CreatedBy = current.CreatedBy;
                }
                else
                {
                    model.Created = DateTime.Now;
                    model.Modified = DateTime.Now;
                    model.CreatedBy = User.Identity.GetUserName();
                }
                var result = AcademicFieldProvider.SaveOrUpdate(model);
                return Json(SuccessApiResponse);
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
        public ActionResult GetJobCategories([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var res = JobCategoryProvider.GetAll();
                return Json(res.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
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
        public ActionResult SaveOrUpdateJobCategory(JobCategory model)
        {
            try
            {
                if (model.Id > 0)
                {
                    var current = JobCategoryProvider.GetKey(model.Id);
                    model.Modified = DateTime.Now;
                    model.ModifiedBy = User.Identity.GetUserName();
                    model.Created = current.Created;
                    model.CreatedBy = current.CreatedBy;
                }
                else
                {
                    model.Created = DateTime.Now;
                    model.Modified = DateTime.Now;
                    model.CreatedBy = User.Identity.GetUserName();
                }
                var result = JobCategoryProvider.SaveOrUpdate(model);
                JobCategoryProvider.SaveOrUpdate(model);
                return Json(SuccessApiResponse);
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