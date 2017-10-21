using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Component.Model
{
    public class SubscriptionRequestModel
    {
        public string NationalId { get; set; } // NationalId
        public long PartyId { get; set; }
        public string Date { get; set; } // Date
        public decimal Amount { get; set; } // Amount
        public string BranchCode { get; set; } // BranchCode
        public string BankDepositAccountNumber { get; set; }
        public int BankDepositId { get; set; }
        public long DetailLedgerId { get; set; }
        public string DepositTranckigNumber { get; set; } // DepositTranckigNumber
        public decimal FixedFee { get; set; }
        public int BranchId { get; set; }
        public bool IsConsiderFixedFee { get; set; }

        public string Note { get; set; } // Note
        public RequestSettlementType RequestSettlementType { get; set; }
        public RequestInsertMode RequestInsertMode { get; set; }
        public DataSource DataSource { get; set; }
        public string AccountCode { get; set; }

        public string SubsidaryLedgerCode { get; set; }
        public EvidenceType EvidenceType { get; set; }
    }
}
