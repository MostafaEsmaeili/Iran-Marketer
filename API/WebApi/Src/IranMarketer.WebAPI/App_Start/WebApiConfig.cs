using System;
using System.ComponentModel;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Text;
using System.Web.Http;
using System.Web.Http.Cors;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace IranMarketer.WebAPI
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            var cors = new EnableCorsAttribute(origins: "*", headers: "*", methods: "*");
            config.EnableCors(cors);

            var json = config.Formatters.JsonFormatter;
            json.SerializerSettings.PreserveReferencesHandling = Newtonsoft.Json.PreserveReferencesHandling.Objects;
            config.Formatters.Remove(config.Formatters.XmlFormatter);

            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
            var jsonFormatter = config.Formatters.JsonFormatter;
            jsonFormatter.SerializerSettings.DateTimeZoneHandling = DateTimeZoneHandling.Local;
            //JsonSerializerSettings serializerSettings = new JsonSerializerSettings();
            //serializerSettings.Converters.Add(new IsoDateTimeConverter());
            //GlobalConfiguration.Configuration.Formatters[0] = new JsonNetFormatter(serializerSettings);
            //GlobalConfiguration.Configuration.Formatters[0] = new JsonMediaTypeFormatter();
            //GlobalConfiguration.Configuration.Formatters[0].Add
            //var json = config.Formatters.JsonFormatter;
            //json.SerializerSettings.PreserveReferencesHandling = Newtonsoft.Json.PreserveReferencesHandling.Objects;
            //config.Formatters.Remove(config.Formatters.XmlFormatter);


            //var cors = new EnableCorsAttribute("http://localhost:44675", "*", "*");
            //config.EnableCors(cors);

            //config.MapHttpAttributeRoutes();

            //config.Routes.MapHttpRoute(
            //    name: "DefaultApi",
            //    routeTemplate: "api/{controller}/{id}",
            //    defaults: new { id = RouteParameter.Optional }
            //);
        }
    }

   
}
