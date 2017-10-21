using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class SubscriptionRequest
    {

        public long RequestId { get; set; }
        public string NationalId { get; set; } // NationalId
        public long PartyId { get; set; }
        public DateTime Date { get; set; } // Date
        public decimal Amount { get; set; } // Amount
        public string BranchCode { get; set; } // BranchCode
        public string BankDepositAccountNumber { get; set; }
        public int BankDepositId { get; set; }
        public long DetailLedgerId { get; set; }
        public string DepositTranckigNumber { get; set; } // DepositTranckigNumber
        public decimal FixedFee { get; set; }
        public bool IsConsiderFixedFee { get; set; }
        public int BranchId { get; set; }
        public string Note { get; set; } // Note
        public RequestSettlementType RequestSettlementType { get; set; }
        public RequestInsertMode RequestInsertMode { get; set; }
        public DataSource DataSource { get; set; }
        public string AccountCode { get; set; }
        public long? CreatedByPartyId { get; set; } // CreatedByPartyId
        public string CreatedByName { get; set; } // CreatedByName
        public string ModifiedBy { get; set; } // ModifiedBy
        public string CreatedBy { get; set; } // CreatedBy
        public string ModifiedByName { get; set; } // ModifiedByName
        public long? ModifiedByPartyId { get; set; } // ModifiedByPartyId
        public EvidenceType EvidenceType { get; set; }

    }
}
