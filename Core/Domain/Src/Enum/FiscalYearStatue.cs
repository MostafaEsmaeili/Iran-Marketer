using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum FiscalYearStatus
    {
        [Description("بسته")]
        Close = 2,
        [Description("باز")]
        Open = 1,
    }
}
