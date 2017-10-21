using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class CustomerPaymentsReportFilter : BaseFilter
    {
        public List<CustomerPaymentType> CustomerPaymentTypes { get; set; }
        public List<string> CustomerPaymentTypeCodes { get; set; }
        public long PartyId { get; set; }
        public int PartyType { get; set; }
        public decimal FromRemain { get; set; }
        public decimal ToRemain { get; set; }
    }
}
