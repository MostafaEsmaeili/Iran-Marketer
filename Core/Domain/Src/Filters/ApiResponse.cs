using System.Collections.Generic;

namespace IranMarketer.Domain.Filters
{
    /// <summary>
    /// 
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class ApiResponse<T>
    {
        /// <summary>
        /// 
        /// </summary>
        public T Result { get; set; }
      
        /// <summary>
        /// 
        /// </summary>
        public string Message { get; set; }


        public int BRuleCode { get; set; }
    }
}