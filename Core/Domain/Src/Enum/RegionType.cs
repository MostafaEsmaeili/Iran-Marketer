using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum RegionType
    {
        [Description("کشور")]
        Country = 1,
        [Description("استان")]
        State = 2
    }
}
