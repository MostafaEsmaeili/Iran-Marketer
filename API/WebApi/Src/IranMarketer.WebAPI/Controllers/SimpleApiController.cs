using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using IranMarketer.Domain.Filters;
using Pikad.Framework.Infra.Logging;

namespace IranMarketer.WebAPI.Controllers
{
    public class SimpleApiController : ApiController
    {
        protected CustomLogger Logger=>new CustomLogger(GetType().FullName);
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
    }
}
