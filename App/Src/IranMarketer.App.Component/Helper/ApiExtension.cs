using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web.UI;
using Castle.Core.Internal;
using Pikad.Framework.Infra.Utility;
using RestSharp;

namespace IranMarketer.App.Component.Helper
{
    public static class ApiExtension
    {
        public static string BaseApiAddress => ConfigurationManager.AppSettings["ApiAddress"];


        public static IRestResponse<T> Exec<T>(this RestRequest request,System.Web.Mvc.Controller controller=null) where T : new()
        {
            request.JsonSerializer = new RestSharp.Serializers.JsonSerializer();
            var client = new RestClient(BaseApiAddress);
            if (controller!=null)
            {
                var identity = (ClaimsIdentity)controller.User.Identity;
                var token = identity.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Authentication)?.Value;
                if (!token.IsNullOrEmpty())
                {
                    request.AddHeader("Authorization", "Bearer " + token);
                }
            }
            var response = client.Execute<T>(request);
            return response;
        }
    }
}
