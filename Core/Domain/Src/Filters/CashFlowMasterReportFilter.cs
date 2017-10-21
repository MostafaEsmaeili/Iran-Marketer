using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Filters
{
    public class CashFlowMasterReportFilter : BaseFilter
    {
        public int TransactionState { get; set; }
        public int Category { get; set; }
        public int TransactionType { get; set; }
    }
}
