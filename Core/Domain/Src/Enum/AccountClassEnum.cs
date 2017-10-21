using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum AccountClassEnum
    {
        [Description("اشخاص")]
        Party = 1,
        [Description("ابزار قابل معامله")]
        Product = 2,
        [Description("بانک")]
        Bank = 3,
        [Description("کارگزاری")]
        Broker = 4,
        [Description("سایر")]
        Other = 5
    }
}
