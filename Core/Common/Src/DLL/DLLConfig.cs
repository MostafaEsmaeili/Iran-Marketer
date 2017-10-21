using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace IranMarketer.Common.DLL
{
    [XmlRoot("DllConfigs")]
    public class DLLConfig
    {
        [XmlArrayItem("SourceFolder")]
        public List<string> SourceFolder { get; set; }
        [XmlArrayItem("DestinationFolder")]
        public List<string> DestinationFolder { get; set; }
    }
}
