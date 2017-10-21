using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum BankDepositState
    {
        [Description("فعال")]
        Active = 1,
        [Description("غیر فعال")]
        InActive = 2,
      
    }
}
