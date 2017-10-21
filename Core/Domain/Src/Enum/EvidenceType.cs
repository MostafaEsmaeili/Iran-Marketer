using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum EvidenceType
    {
        [Description("عادی")]
        Regular = 1,
        [Description("ممتاز")]
        Special = 2
    }
}