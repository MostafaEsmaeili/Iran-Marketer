using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum MessageResultEnum
    {
        [Description("تراکنش با شکست روبرو گردید")]
        OperationFailed = 1000,
        [Description("تراکنش با موفقیت انجام شد")]
        OperationSuccessFullyDone = 1001
    }
}
