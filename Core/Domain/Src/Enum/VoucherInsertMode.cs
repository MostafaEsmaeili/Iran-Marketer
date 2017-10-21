using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum VoucherInsertMode
    {
        [Description("اتوماتیک")]
        Automatic = 1,
        [Description("دستی")]
        Manual = 2
    }
}
