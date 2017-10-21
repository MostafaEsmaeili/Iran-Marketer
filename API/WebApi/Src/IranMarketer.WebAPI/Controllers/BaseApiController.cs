using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Reflection;
using System.Text;
using System.Web.Http;
using System.Web.Http.Results;
using AutoMapper.Impl;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using Pikad.Framework.Infra.Logging;
using IranMarketer.Domain.Filters;
using IranMarketer.WebAPI.Attrebute;
using Newtonsoft.Json;
using Pikad.Framework.Infra.Provider;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.IoC;
using Swashbuckle.Swagger;
using Swashbuckle.Swagger.Annotations;


namespace IranMarketer.WebAPI
{
    /// <summary>
    /// 
    /// </summary>
    public abstract class BaseApiController<TApiProvider, TEntity, TPk> : ApiController
        where TApiProvider : Provider<TEntity, TPk> where TPk : IComparable where TEntity : Entity<TPk>

    {
        protected readonly string _adminRoleName = "Admin";
        public TApiProvider ApiProvider => CoreContainer.Container.Resolve<TApiProvider>();

        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        //public BaseReportProvider ReportProvider = new BaseReportProvider();
        //public PartyProvider PartyProvider => Core.Container.Resolve<PartyProvider>();

        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="filter"></param>
        ///// <param name="result"></param>
        ///// <typeparam name="T"></typeparam>
        ///// <typeparam name="TK"></typeparam>
        ///// <returns></returns>
        protected List<TK> SetKendoFilter<T, TK>(BaseReportFilter<T> filter,
            List<TK> result)
        {
            try
            {

                if (filter?.OptionalFilter != null && filter?.OptionalFilter.skip >= 0 &&
                    filter?.OptionalFilter.take > 0)
                {
                    result = result.Skip(filter.OptionalFilter.skip).Take(filter.OptionalFilter.take).ToList();
                }
                if (filter?.OptionalFilter?.sort != null && filter?.OptionalFilter.sort.Count > 0)
                {
                    result = filter.OptionalFilter.sort[0].dir == "desc"
                        ? result.OrderByDescending(
                                x => x.GetType().GetProperty(filter.OptionalFilter.sort[0].field).GetValue(x, null))
                            .ToList()
                        : result.OrderBy(
                                x => x.GetType().GetProperty(filter.OptionalFilter.sort[0].field).GetValue(x, null))
                            .ToList();
                }

                return result;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }


        [Route("GetAll")]
        [HttpPost]

        public abstract IHttpActionResult GetAll();
        //{
        //    ApiResponse<List<TEntity>> res;
        //    try
        //    {

        //        var result = ApiProvider.GetAll().ToList();
        //        res = new ApiResponse<List<TEntity>>
        //        {
        //            Result = result,
        //            BRuleCode = (int) RuleExceptionCodeCommon.ValidResult,
        //            Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<List<TEntity>>
        //        {
        //            Message = BusinessRuleHelper.GetException(ex),
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
        //        };
        //    }
        //    return Json(res);
        //}



        [Route("SaveOrUpdate")]
        [HttpPost]
        public abstract IHttpActionResult SaveOrUpdate(ApiRequest<TEntity> request);
        //{
        //    ApiResponse<List<TEntity>> res;
        //    try
        //    {
        //        if (int.Parse(request.Entity.Id.SafeString()) > 0)
        //        {
        //            request.Entity.Modified = DateTime.Now;
        //            request.Entity.ModifiedBy = request.AuthenticatedUserName;
        //        }
        //        else
        //        {
        //            request.Entity.Created = DateTime.Now;
        //            request.Entity.CreatedBy = request.AuthenticatedUserName;
        //        }
        //        var result = ApiProvider.SaveOrUpdate(request.Entity);
        //        res = new ApiResponse<List<TEntity>>
        //        {
        //            //Result = request.Entity,
        //            BRuleCode = (int) RuleExceptionCodeCommon.ValidResult,
        //            Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<List<TEntity>>
        //        {
        //            Message = BusinessRuleHelper.GetException(ex),
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
        //        };
        //    }
        //    return Json(res);
        //}


        [Route("GetById")]
        [HttpPost]
        public abstract IHttpActionResult GetById(ApiRequest<TEntity> request);
        //{
        //    ApiResponse<TEntity> res;
        //    try
        //    {

        //        var result = ApiProvider.Get(request.Entity);
        //        res = new ApiResponse<TEntity>
        //        {
        //            Result = result,
        //            BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
        //            Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<TEntity>
        //        {
        //            Message = BusinessRuleHelper.GetException(ex),
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
        //        };
        //    }
        //    return Json(res);
        //}
    }
}
