using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum EvidenceState
    {
        [Description("قابل ابطال")]
        Voidable  = 1,
        [Description("غیر قابل ابطال")]
        NonVoid = 2
    }
}
