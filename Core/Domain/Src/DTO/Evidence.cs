using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class Evidence
    {
        public decimal Volume { get; set; }
        public EvidenceType EvidenceType { get; set; }
        public decimal RemainVolume { get; set; }
        public DateTime? EmissionDate { get; set; }
        public long PartyId { get; set; } 
        public string PartyFullName { get; set; }
        public string PartyNationalId { get; set; }
        public string EvidenceTypeTitle => (int)EvidenceType>0? EvidenceType.GetDescription():null;
        public int? PrintCount { get; set; }
        public decimal? Penalty { get; set; }
    }
}
