using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum PartyType
    {
        [Description("حقیقی")]
        Retail = 1,
        [Description("حقوقی")]
        Institutional = 2,
        [Description("admin")]
        Admin
    }
}
