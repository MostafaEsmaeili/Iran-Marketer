using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum BalanceSheetColumnType
    {
        [Description("چهار ستونی")]
        Four = 1,
        [Description("شش ستونی")]
        Six = 2
    }
}
