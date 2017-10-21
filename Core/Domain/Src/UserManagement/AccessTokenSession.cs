using System;
using System.Collections.Generic;

namespace IranMarketer.Domain
{
    public class AccessTokenSession
    {
        public string userId { get; set; }
        public string ClientId { get; set; }
    }
    public class AccessTokenSessionComparer : IEqualityComparer<AccessTokenSession>
    {
        public bool Equals(AccessTokenSession x, AccessTokenSession y)
        {
            return x.userId.EqualsIgnoreCase(y.userId) && x.ClientId.EqualsIgnoreCase(y.ClientId);
        }

        public int GetHashCode(AccessTokenSession obj)
        {
            return obj.ClientId.GetHashCode() + obj.userId.GetHashCode();
        }

        
    }

    public static class Extension
    {
        public static bool EqualsIgnoreCase(this string value, string other)
        {
            return string.Equals(value, other, StringComparison.CurrentCultureIgnoreCase);
        }
    }
}