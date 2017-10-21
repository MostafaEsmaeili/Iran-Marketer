using System;
using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Attribute
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