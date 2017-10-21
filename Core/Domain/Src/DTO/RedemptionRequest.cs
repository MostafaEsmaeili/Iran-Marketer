using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class RedemptionRequest
    {
        public string NationalId { get; set; } // NationalId
        public DateTime Date { get; set; } // Date
        public string BranchCode { get; set; } // BranchCode
        public decimal Volume { get; set; } // Volume
        public string CreatedBy { get; set; } // CreatedBy
        public decimal FixedFee { get; set; }
        public bool IsConsiderFixedFee { get; set; }

        public string Note { get; set; } // Note
        public RequestInsertMode RequestInsertMode { get; set; }
        public DataSource DataSource { get; set; }
        public long? CreatedByPartyId { get; set; } // CreatedByPartyId
        public string CreatedByName { get; set; } // CreatedByName
        public string ModifiedBy { get; set; } // ModifiedBy
        public string ModifiedByName { get; set; } // ModifiedByName
        public long? ModifiedByPartyId { get; set; } // ModifiedByPartyId
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified
        public EvidenceType EvidenceType { get; set; }
    }
}
