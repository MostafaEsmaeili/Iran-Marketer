using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum DataSource
    {
        [Description("برنامه صندوق")]
        App = 1,
        [Description("سایر")]
        Other = 2
    }
}
