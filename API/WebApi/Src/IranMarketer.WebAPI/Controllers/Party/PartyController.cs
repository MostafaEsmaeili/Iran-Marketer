using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.PartyManagement.API;
using IranMarketer.WebAPI.Attrebute;
using Swashbuckle.Swagger.Annotations;

namespace IranMarketer.WebAPI.Controllers.Party
{
    [RoutePrefix("api/party")]
    public class PartyController : SimpleApiController
    {
        public PartyProvider PartyProvider => CoreContainer.Container.Resolve<PartyProvider>();
        public PartyRolesProvider PartyRolesProvider => CoreContainer.Container.Resolve<PartyRolesProvider>();

        [Route("SaveOrUpdatePartyRoles")]
        [SwaggerResponse(HttpStatusCode.OK, "Return PartyId", typeof(long))]
        [HttpPost]
        [PageRepository(PageType = PageType.Customer)]

        public IHttpActionResult SaveOrUpdatePartyRoles(ApiRequest<PartyRole> customer)
        {
            ApiResponse<PartyRole> res;
            try
            {
                customer.Entity.CreatedBy = customer.Entity.ModifiedBy = customer.AuthenticatedUserName;
                PartyRolesProvider.SaveOrUpdate(customer.Entity);
                res = new ApiResponse<PartyRole>
                {
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<PartyRole>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }

        [Route("GetAllPartyRoles")]
        [SwaggerResponse(HttpStatusCode.OK, "Return PartyId", typeof(long))]
        [HttpPost]
        [PageRepository(PageType = PageType.Customer)]

        public IHttpActionResult GetAllPartyRoles()
        {
            ApiResponse<List<PartyRole>> res;
            try
            {
                var mode = PartyRolesProvider.GetAllPartyRoles();
                res = new ApiResponse<List<PartyRole>>
                {
                    Result = mode.ToList(),
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<PartyRole>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }

        [Route("SavePartyBasicDitails")]
        [SwaggerResponse(HttpStatusCode.OK, "Return Void", typeof(long))]
        [HttpPost]

        public IHttpActionResult SavePartyBasicDitails(ApiRequest<RetailParty> request)
        {
            ApiResponse<List<PartyRole>> res;
            try
            {
           PartyProvider.SavePartyBasicInformation(request);
                res = new ApiResponse<List<PartyRole>>
                {
                   // Result = mode.ToList(),
                    BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<List<PartyRole>>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
            }
            return Json(res);
        }


        //[Route("GetAllParties")]
        //[SwaggerResponse(HttpStatusCode.OK, "Return PartyId", typeof(long))]
        //[HttpPost]
        //[PageRepository(PageType = PageType.Customer)]

        //public IHttpActionResult GetAllParties(BaseReportFilter<SearchPartyFilter> filter)
        //{
        //    var res = new ApiPagedCollectionResponse<Domain.Entity.Party>();

        //    try
        //    {

        //        var parties = PartyProvider.SearchParties(filter.ReportFilter.Pharse);
        //        res = new ApiPagedCollectionResponse<Domain.Entity.Party>
        //        {
        //            Result = parties,
        //            BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
        //            Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
        //            TotalRecords = parties.Count
        //        };

        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res.Message = BusinessRuleHelper.GetException(ex);
        //        res.BRuleCode = BusinessRuleHelper.GetExceptionCode(ex);
        //    }
        //    return Json(res);
        //}

        //[Route("GetAllPartiesByRole")]
        //[SwaggerResponse(HttpStatusCode.OK, "Return PartyId", typeof(long))]
        //[HttpPost]
        //[PageRepository(PageType = PageType.Customer)]

        //public IHttpActionResult GetAllPartiesByRole(BaseReportFilter<SearchPartyFilter> filter)
        //{
        //    var res = new ApiPagedCollectionResponse<Domain.Entity.Party>();

        //    try
        //    {

        //        var parties = PartyProvider.SearchParties(filter.ReportFilter.Pharse, filter.ReportFilter.RoleCode);
        //        res = new ApiPagedCollectionResponse<Domain.Entity.Party>
        //        {
        //            Result = parties,
        //            BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
        //            Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
        //            TotalRecords = parties.Count
        //        };

        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res.Message = BusinessRuleHelper.GetException(ex);
        //        res.BRuleCode = BusinessRuleHelper.GetExceptionCode(ex);
        //    }
        //    return Json(res);
        //}
    }
}
