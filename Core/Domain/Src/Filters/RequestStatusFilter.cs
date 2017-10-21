using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class RequestStatusFilter
    {
        public DateTime Date { get; set; }

        public RequestTransactionState RequestTransactionState { get; set; }
        public RequestTransactionType RequestTransactionType { get; set; }
    }
}
