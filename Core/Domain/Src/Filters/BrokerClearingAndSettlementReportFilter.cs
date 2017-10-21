using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Filters
{
    public class BrokerClearingAndSettlementReportFilter : BaseFilter
    {
        public int FiscalYearId { get; set; }
    }
}
