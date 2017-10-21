using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum GuaranteeState
    {
        [Description("شامل شده")]
        Included = 1,
        [Description("شامل نشده")]
        Ignored = 2
    }
}
