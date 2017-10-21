using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RestSharp;

namespace IranMarketer.App.Component.Helper
{
    public class ApiHelper
    {
        public string BaseApiAddress => ConfigurationManager.AppSettings["ApiAddress"];


        public RestClient GetRestClient()
        {
            try
            {
                return new RestClient(BaseApiAddress);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public RestRequest Request(string methodName, Method method)
        {
            try
            {
                var client = GetRestClient();
                //TODO : login

                var req = new RestRequest(methodName, method)
                {
                    RequestFormat = DataFormat.Json
                };

                //TODO : header
                return req;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }

    //public class ApiRequest<T>
    //{
    //    public T Entity { get; set; }

    //}

    //public class ApiResponse<T>
    //{
    //    /// <summary>
    //    /// 
    //    /// </summary>
    //    public T Result { get; set; }

    //    /// <summary>
    //    /// 
    //    /// </summary>
    //    public string Message { get; set; }


    //    public int BRuleCode { get; set; }
    //}

}

public class ApiPagedCollectionResponse<T>
{

    public List<T> Result { get; set; }

    public long TotalRecords { get; set; }

    public long PageSize { get; set; }

    public string Message { get; set; }

    public int BRuleCode { get; set; }

    public decimal TotalAggrigatedValue1 { get; set; }
    public decimal TotalAggrigatedValue2 { get; set; }

    public decimal TotalAggrigatedValue3 { get; set; }

    public decimal TotalAggrigatedValue4 { get; set; }

}


public class EnumResponseDto
{
    public string Title { get; set; }

    public string Code { get; set; }
}
