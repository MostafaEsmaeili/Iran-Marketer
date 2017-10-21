using System;

namespace IranMarketer.Common.Identity_Server
{
    public class IdentityServerSettings 
    {
        public string ClientPassword { get; set; }
        public string AuthorityAddress { get; set; }
        public string TokenProviderAddress { get; set; }

        private static IdentityServerSettings _identityServerSettings;
        public static IdentityServerSettings Insance => _identityServerSettings ?? (_identityServerSettings = new IdentityServerSettings());

        private IdentityServerSettings()
        {

            var nameValueCollection = System.Configuration.ConfigurationManager.AppSettings;
            foreach (var key in nameValueCollection.AllKeys)
            {
                var propertyInfo = GetType().GetProperty(key);
                if (propertyInfo != null)
                    propertyInfo.SetValue(this, Convert.ChangeType(nameValueCollection[key], propertyInfo.PropertyType), null);
            }
        }
    }
}
