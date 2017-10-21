using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Filters
{
    public class TradeReportFilter : BaseFilter
    {
        public int ProductId { get; set; }
        public int TransactionType { get; set; }
        public string BrokerCode { get; set; }
    }
}
