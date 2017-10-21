using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.SharedData;
using IranMarketer.WebAPI.Attrebute;
using Pikad.Framework.Repository.IoC;
using Swashbuckle.Swagger.Annotations;

namespace IranMarketer.WebAPI.Controllers.SharedData
{
    [RoutePrefix("api/SharedData")]

    public class SharedDataController :SimpleApiController
    {
        public AcademicFieldProvider AcademicFieldProvider => CoreContainer.Container.Resolve<AcademicFieldProvider>();
        public IndustryProvider IndustryProvider => CoreContainer.Container.Resolve<IndustryProvider>();

        public JobCategoryProvider JobCategoryProvider => CoreContainer.Container.Resolve<JobCategoryProvider>();

        public RegionProvider RegionProvider => CoreContainer.Container.Resolve<RegionProvider>();

            [Route("GetRegionsByFilter")]
            [SwaggerResponse(HttpStatusCode.OK, "Return Regions", typeof(ApiResponse<List<Region>>))]
            [HttpPost]
            public IHttpActionResult GetRegionsByFilter(string filter, RegionType regionType)
            {
                ApiResponse<List<Region>> res;
                try
                {

                    var regions = RegionProvider.SearchRegion(filter, regionType);
                    res = new ApiResponse<List<Region>>
                    {
                        Result = regions,
                        Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                    };
                }
                catch (Exception ex)
                {
                    Logger.ErrorException(ex.Message, ex);
                    res = new ApiResponse<List<Region>>
                    {
                        Result = null,
                        Message = MessageResultEnum.OperationFailed.GetEnumDescription()
                    };
                }
                return Json(res);
            }

            [Route("GetAllAcademicFiels")]
        [SwaggerResponse(HttpStatusCode.OK, "Return ResultId", typeof(List<AcademicField>))]
        [HttpPost]
        public IHttpActionResult GetAllAcademicFiels()
        {
            ApiResponse<List<AcademicField>> res;
            try
            {

                var result = AcademicFieldProvider.GetAll().ToList();
                res = new ApiResponse<List<AcademicField>>
                {
                    Result = result,
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<AcademicField>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }
        [Route("SaveOrUpdateAcademicFiled")]
        [SwaggerResponse(HttpStatusCode.OK, "Return ResultId", typeof(List<AcademicField>))]
        [HttpPost]
        public IHttpActionResult SaveOrUpdateAcademicFiled(ApiRequest<AcademicField> request)
        {
            ApiResponse<List<AcademicField>> res;
            try
            {
                if (request.Entity.Id > 0)
                {
                    var current = AcademicFieldProvider.GetKey(request.Entity.Id);
                    request.Entity.Modified = DateTime.Now;
                    request.Entity.ModifiedBy = request.AuthenticatedUserName;
                    request.Entity.Created = current.Created;
                    request.Entity.CreatedBy = current.CreatedBy;
                }
                else
                {
                    request.Entity.Created = DateTime.Now;
                    request.Entity.Modified = DateTime.Now;
                    request.Entity.CreatedBy = request.AuthenticatedUserName;
                }
                var result = AcademicFieldProvider.SaveOrUpdate(request.Entity);
                res = new ApiResponse<List<AcademicField>>
                {
                    //Result = request.Entity,
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<AcademicField>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }




        [Route("GetAllIndausries")]
        [SwaggerResponse(HttpStatusCode.OK, "Return ResultId", typeof(List<Industry>))]
        [HttpPost]
        public IHttpActionResult GetAllIndausries()
        {
            ApiResponse<List<Industry>> res;
            try
            {

                var result = IndustryProvider.GetAll().ToList();
                res = new ApiResponse<List<Industry>>
                {
                    Result = result,
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<Industry>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }
        [Route("SaveOrUpdateIndustry")]
        [SwaggerResponse(HttpStatusCode.OK, "Return ResultId", typeof(List<Industry>))]
        [HttpPost]
        public IHttpActionResult SaveOrUpdateIndustry(ApiRequest<Industry> request)
        {
            ApiResponse<List<Industry>> res;
            try
            {
                if (request.Entity.Id > 0)
                {
                    var current = IndustryProvider.GetKey(request.Entity.Id);
                    request.Entity.Modified = DateTime.Now;
                    request.Entity.ModifiedBy = request.AuthenticatedUserName;
                    request.Entity.Created = current.Created;
                    request.Entity.CreatedBy = current.CreatedBy;
                }
                else
                {
                    request.Entity.Created = DateTime.Now;
                    request.Entity.Modified = DateTime.Now;
                    request.Entity.CreatedBy = request.AuthenticatedUserName;
                }
                var result = IndustryProvider.SaveOrUpdate(request.Entity);
                res = new ApiResponse<List<Industry>>
                {
                    //Result = request.Entity,
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<Industry>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }




        [Route("GetAllJobCategories")]
        [SwaggerResponse(HttpStatusCode.OK, "Return ResultId", typeof(List<JobCategory>))]
        [HttpPost]
        public IHttpActionResult GetAllJobCategory()
        {
            ApiResponse<List<JobCategory>> res;
            try
            {

                var result = JobCategoryProvider.GetAll().ToList();
                res = new ApiResponse<List<JobCategory>>
                {
                    Result = result,
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<JobCategory>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }
        [Route("SaveOrUpdateJobCategory")]
        [SwaggerResponse(HttpStatusCode.OK, "Return ResultId", typeof(List<JobCategory>))]
        [HttpPost]
        public IHttpActionResult SaveOrUpdateJobCategory(ApiRequest<JobCategory> request)
        {
            ApiResponse<List<JobCategory>> res;
            try
            {
                if (request.Entity.Id > 0)
                {
                    var current = JobCategoryProvider.GetKey(request.Entity.Id);
                    request.Entity.Modified = DateTime.Now;
                    request.Entity.ModifiedBy = request.AuthenticatedUserName;
                    request.Entity.Created = current.Created;
                    request.Entity.CreatedBy = current.CreatedBy;
                }
                else
                {
                    request.Entity.Created = DateTime.Now;
                    request.Entity.Modified = DateTime.Now;
                    request.Entity.CreatedBy = request.AuthenticatedUserName;
                }
                var result = JobCategoryProvider.SaveOrUpdate(request.Entity);
                res = new ApiResponse<List<JobCategory>>
                {
                    //Result = request.Entity,
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<JobCategory>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }




        [Route("GetAllRegions")]
        [SwaggerResponse(HttpStatusCode.OK, "Return ResultId", typeof(List<Region>))]
        [HttpPost]
        public IHttpActionResult GetAllRegions()
        {
            ApiResponse<List<Region>> res;
            try
            {

                var result = RegionProvider.GetAll().ToList();
                res = new ApiResponse<List<Region>>
                {
                    Result = result,
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<Region>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }
        [Route("SaveOrUpdateRegion")]
        [SwaggerResponse(HttpStatusCode.OK, "Return ResultId", typeof(List<Region>))]
        [HttpPost]
        public IHttpActionResult SaveOrUpdateRegion(ApiRequest<Region> request)
        {
            ApiResponse<List<Region>> res;
            try
            {
                if (request.Entity.Id > 0)
                {
                    request.Entity.Modified = DateTime.Now;
                    request.Entity.ModifiedBy = request.AuthenticatedUserName;
                }
                else
                {
                    request.Entity.Created = DateTime.Now;
                    request.Entity.CreatedBy = request.AuthenticatedUserName;
                }
                var result = RegionProvider.SaveOrUpdate(request.Entity);
                res = new ApiResponse<List<Region>>
                {
                    //Result = request.Entity,
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<Region>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }
    }
}
