using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;
using IranMarketer.Domain.Enum;

namespace IranMarketer.WebAPI.Attrebute
{
    /// <summary>
    /// 
    /// </summary>
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = true)]
    public class PageRepositoryAttribute : System.Attribute
    {
        public PageType PageType { get; set; }
    }
}