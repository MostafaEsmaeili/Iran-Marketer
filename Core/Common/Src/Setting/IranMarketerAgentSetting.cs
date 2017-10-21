using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Reflection;

namespace IranMarketer.Common
{
    public class IranMarketerAgentSetting : AgentSetting
    {
        public int JobRunningMode { get; set; }


        //SMS & Email Config
        public string SMSRecepients { get; set; }
        public string EmailRecepients { get; set; }

        public string BrokerCodes { get; set; }



        private static IranMarketerAgentSetting _assetAgentSetting;

        public static IranMarketerAgentSetting Insance
        {
            get
            {
                if (_assetAgentSetting == null)
                    _assetAgentSetting = new IranMarketerAgentSetting();
                return _assetAgentSetting;
            }
        }

        private IranMarketerAgentSetting()
        {

            NameValueCollection nameValueCollection = ConfigurationManager.AppSettings;
            foreach (string key in nameValueCollection.AllKeys)
            {
                PropertyInfo propertyInfo = this.GetType().GetProperty(key);
                try
                {
                    if (propertyInfo != null)
                        propertyInfo.SetValue(this, Convert.ChangeType(nameValueCollection[key], propertyInfo.PropertyType), null);
                }
                catch (Exception ex)
                {

                }
            }
        }

        public List<string> SMSRecepientList
        {
            get
            {
                if (!string.IsNullOrEmpty(SMSRecepients))
                {
                    return SMSRecepients.Split(';').ToList();
                }
                return null;
            }
        }
        public List<string> EmailRecepientList
        {
            get
            {
                if (!string.IsNullOrEmpty(EmailRecepients))
                {
                    return EmailRecepients.Split(';').ToList();
                }
                return null;
            }
        }

        public List<string> BrokerCodeList
        {
            get
            {
                if (!string.IsNullOrEmpty(BrokerCodes))
                {
                    return BrokerCodes.Split(';').ToList();
                }
                return null;
            }
        }

        }
}
