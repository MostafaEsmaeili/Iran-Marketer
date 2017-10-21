using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum  RequestProcessFinalResult
    {
        NotWorkingDay = 1,
        Success = 2,
        Failed = 3,
        NoRequestToProcess = 4
    }
}
