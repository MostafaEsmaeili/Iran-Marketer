using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using IranMarketer.Domain;


namespace IranMarketer.WebAPI
{
    public static class StaticData
    {

        public static Dictionary<AccessTokenSession, string> AccessToken { get; set; } =
            new Dictionary<AccessTokenSession, string>(new AccessTokenSessionComparer());

    }
}