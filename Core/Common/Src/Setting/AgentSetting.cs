using System;
using System.Configuration;
using System.Runtime.Serialization;
using System.Web.Script.Serialization;

namespace IranMarketer.Common
{
    public abstract class AgentSetting
    {
        private string _assemblyLocation = AppDomain.CurrentDomain.BaseDirectory;
        public AgentSetting()
        {

        }
        public string AssemblyLocation
        {
            get { return _assemblyLocation; }
            set { _assemblyLocation = value; }
        }

        [ScriptIgnore]
        [IgnoreDataMember]
        public Configuration Configuration => ConfigurationManager.OpenExeConfiguration(AssemblyLocation);


        public string ReadAppConfig(string key, string defaultValue)
        {
            var config = ConfigurationManager.OpenExeConfiguration(AssemblyLocation);
            var keyValueConfigurationElement = config.AppSettings.Settings[key];
            if (keyValueConfigurationElement == null)
                return defaultValue;
            return keyValueConfigurationElement.Value;
        }
    }
}
