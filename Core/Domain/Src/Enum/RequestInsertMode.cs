using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum RequestInsertMode
    {
        [Description("دستی")]
        Manual = 1,
        [Description("فایل")]
        File = 2
    }
}
