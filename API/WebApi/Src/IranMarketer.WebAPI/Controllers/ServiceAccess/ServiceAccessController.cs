using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Authentication;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.DTO.ServiceAcces;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.WebAPI.Attrebute;
using Swashbuckle.Swagger.Annotations;

namespace IranMarketer.WebAPI.Controllers.ServiceAccess
{
    [RoutePrefix("api/ServiceAccess")]


    public class ServiceAccessController : SimpleApiController
    {
        private AuthorizeProvider AuthorizeProvider => CoreContainer.Container.Resolve<AuthorizeProvider>();
        /// <summary>
        /// 
        /// Return GetAllServiceRepositories
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///         "ReportFilter": {
        ///         
        ///          
        ///          
        ///         },
        ///         "OptionalFilter": {
        ///           "take": 0,
        ///           "skip": 0,
        ///           "page": 0,
        ///           "sort": null
        ///         }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        [Route("GetAllServiceRepositories")]
        [PageRepository(PageType = PageType.ServiceAccess)]

        [HttpPost]
        public IHttpActionResult GetAllServiceRepositories(
            [FromBody] BaseReportFilter<ReportFilter> filter)
        {
            var res = new ApiPagedCollectionResponse<ServiceRepositoryDto>
            {
                Result = new List<ServiceRepositoryDto>()
            };
            try
            {

                var repo = AuthorizeProvider.GetAllServiceRepositories(filter);
                repo = SetKendoFilter(filter, repo);


                res = new ApiPagedCollectionResponse<ServiceRepositoryDto>
                {
                    Result = repo,

                    Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString(),
                    TotalRecords = repo.Count
                };
            }

            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res.Message = BusinessRuleHelper.GetExceptionCode(ex).ToString();
            }

            return Json(res);
        }

        /// <summary>
        /// 
        /// Return AddServiceRepository
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///           "ReportFilter": {
        ///              "ServiceName": "MostafaTest",
        ///              "MethodName": "MostafaTestApi",
        ///               "Code": "MostafaTestApi",
        ///               "Title": "test"
        ///      },
        ///         "OptionalFilter": {
        ///           "take": 0,
        ///           "skip": 0,
        ///           "page": 0,
        ///           "sort": null
        ///         }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        [Route("AddServiceRepository")]
        [HttpPost]
        [PageRepository(PageType = PageType.ServiceAccess)]

        public IHttpActionResult AddServiceRepository(
            [FromBody] BaseReportFilter<ServiceRepositoryDto> filter)
        {
            var res = new ApiPagedCollectionResponse<ServiceRepositoryDto>
            {
            };
            try
            {
                AuthorizeProvider.AddServiceRepository(filter);
                res = new ApiPagedCollectionResponse<ServiceRepositoryDto>
                {
                    Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString(),
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res.Message = BusinessRuleHelper.GetExceptionCode(ex).ToString();
            }
            return Json(res);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        [Route("GetRegisteredUsers/{text?}")]
        [HttpGet]
        [PageRepository(PageType = PageType.ServiceAccess)]
        public IHttpActionResult GetRegisteredUsers(string text = "")
        {
           ApiPagedCollectionResponse<object> res;

            try
            {
                var lst = new List<ApplicationUserDTO>();

                lst = AuthorizeProvider.GetUsers(text);

                var final =
                    lst.Select(
                        x =>
                            new
                            {
                                x.UserName,
                                x.DisplayName,
                                x.DisplayNameEn,
                                x.DisplayNameFa,
                                x.Email,
                                x.IsAdmin,
                                x.IsCustomizedAccess,
                                x.PhoneNumber,
                                x.Status
                            }).ToList();

                res = new ApiPagedCollectionResponse<object>
                {
                    Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString(),
                    Result = new List<object> { final.OrderBy(x => x.UserName) },
                    TotalRecords = final.Count

                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<object>
                {
                    Message = BusinessRuleHelper.GetExceptionCode(ex).ToString()
                };
            }

            return Json(res);
        }


        /// <summary>
        /// 
        /// Return AddServiceRepository
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///         "ReportFilter": {
        ///         
        ///          
        ///          
        ///         },
        ///         "OptionalFilter": {
        ///           "take": 0,
        ///           "skip": 0,
        ///           "page": 0,
        ///           "sort": null
        ///         }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[Route("GetAllServiceAccess")]
        //[SwaggerResponse(HttpStatusCode.OK, "Return GetAllServiceAccess.", typeof(ServiceAccessDto))]
        //[HttpPost]
        //public IHttpActionResult GetAllServiceAccess(
        //    [FromBody] BaseReportFilter<ReportFilter> filter)
        //{
        //    var res = new ApiPagedCollectionResponse<ServiceAccessDto>
        //    {
        //    };
        //    try
        //    {
        //        var ser = AuthorizeProvider.GetAllServiceAccess(filter);
        //        ser = SetKendoFilter(filter, ser);
        //        res = new ApiPagedCollectionResponse<ServiceAccessDto>
        //        {
        //            Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString(),
        //            Result = ser,
        //            TotalRecords = ser.Count
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res.Message = BusinessRuleHelper.GetExceptionCode(ex).ToString();
        //    }
        //    return Json(res);
        //}



        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///         {
        ///           "ReportFilter": {
        ///             "UserNames": [
        ///               "mostafa"
        ///             ],
        ///             "PageTypes": [
        ///               7,8,10
        ///             ],
        ///          
        ///         }
        ///         },
        ///         "OptionalFilter": {
        ///           "take": 0,
        ///           "skip": 0,
        ///           "page": 0,
        ///           "sort": null
        ///         }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        [Route("AddServiceAccessByUserNameAndPage")]
        [HttpPost]
        [PageRepository(PageType = PageType.ServiceAccess)]

        public IHttpActionResult AddServiceAccessByUserNameAndPage(
            [FromBody] BaseReportFilter<ServiceAccessAddFilter> filter)
        {
            var res = new ApiPagedCollectionResponse<ServiceAccessDto>
            {
            };
            try
            {
                AuthorizeProvider.AddServiceAccessByUserNameAndPage(filter);

                res = new ApiPagedCollectionResponse<ServiceAccessDto>
                {
                    Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString(),
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res.Message = BusinessRuleHelper.GetExceptionCode(ex).ToString();
            }
            return Json(res);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///         {
        ///           "ReportFilter": {
        ///             "Role": "ddff558sds-sds44a-ddfdf",
        ///             "PageTypes": [
        ///               7,8,10
        ///             ],
        ///          
        ///         }
        ///         },
        ///         "OptionalFilter": {
        ///           "take": 0,
        ///           "skip": 0,
        ///           "page": 0,
        ///           "sort": null
        ///         }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        [Route("AddServiceAccessByRoleIdAndPage")]
        [HttpPost]
        [PageRepository(PageType = PageType.ServiceAccess)]

        public IHttpActionResult AddServiceAccessByUserIdAndPage(
            [FromBody] BaseReportFilter<ServiceAccessAddFilter> filter)
        {
            var res = new ApiPagedCollectionResponse<ServiceAccessDto>
            {
            };
            try
            {
                AuthorizeProvider.AddServiceAccessByRoleIdAndPage(filter);

                res = new ApiPagedCollectionResponse<ServiceAccessDto>
                {
                    Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString(),
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res.Message = BusinessRuleHelper.GetExceptionCode(ex).ToString();
            }
            return Json(res);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///         {
        ///           "ReportFilter": {
        ///          
        ///         }
        ///         },
        ///         "OptionalFilter": {
        ///           "take": 0,
        ///           "skip": 0,
        ///           "page": 0,
        ///           "sort": null
        ///         }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        [Route("GetAllPageAccessBasedOnRoles")]
        [HttpPost]        [PageRepository(PageType = PageType.ServiceAccess)]

        public IHttpActionResult GetAllPageAccessBasedOnRoles(
            [FromBody] BaseReportFilter<ReportFilter> filter)
        {
            var res = new ApiPagedCollectionResponse<FlatServiceAccess>
            {
            };
            try
            {
               var data= AuthorizeProvider.GetAllPageAccessBasedOnRoles(Applications.IranMarketerFund);

                res = new ApiPagedCollectionResponse<FlatServiceAccess>
                {
                    Message = (RuleExceptionCodeCommon.ValidResult).GetEnumDescription(),
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Result = data,
                    TotalRecords = data.Count
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res.Message = BusinessRuleHelper.GetException(ex);
                res.BRuleCode = BusinessRuleHelper.GetExceptionCode(ex);
            }
            return Json(res);
        }

    }
}
