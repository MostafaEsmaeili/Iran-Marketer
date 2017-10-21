using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class CustomerEvidenceFilter
    {
        public long PartyId { get; set; }
        public string NationalId { get; set; }
        public EvidenceType EvidenceType { get; set; }
    }
}
