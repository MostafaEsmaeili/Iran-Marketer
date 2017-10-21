using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Filters
{
    public class FlatCustomerReportFilter : BaseFilter
    {
        public long PartyId { get; set; }
        public string NamePhrase { get; set; }
        public int BranchId { get; set; }
        public int RegionId { get; set; }
        public int PartyType { get; set; }
    }
}
