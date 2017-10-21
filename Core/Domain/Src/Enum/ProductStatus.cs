using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum ProductStatus
    {
        [Description("فعال")]
        Active = 1,
        [Description("حذف شده")]
        Deleted = 2
    }
}
