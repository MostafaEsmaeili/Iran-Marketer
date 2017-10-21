using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class CashFlowMaster
    {
        public long Id { get; set; } // Id (Primary key)
        public DateTime Date { get; set; } // Date
        public string DateJalali => Date.ConvertMiladiToJalali();
        public int TransactionType { get; set; } // TransactionType
        public CashFlowTransactionType CashFlowTransactionType => ((CashFlowTransactionType) TransactionType);
        public string CashFlowTransactionTypeTitle => ((CashFlowTransactionType)TransactionType).GetDescription();
        public int State { get; set; } // State
        public CashFlowState CashFlowState => ((CashFlowState) State);
        public string CashFlowStateTitle => ((CashFlowState)State).GetDescription();
        public int Category { get; set; } // Category
        public decimal? Amount { get; set; } // Amount
        public long? FromPartyId { get; set; } // FromPartyId
        public long? ToPartyId { get; set; } // ToPartyId
        public string FromDetailLedgerCode { get; set; } // FromDetailLedgerCode
        public string ToDetailLedgerCode { get; set; } // ToDetailLedgerCode
        public long? FromDetaiLedgerId { get; set; } // FromDetaiLedgerId
        public long? ToDetaiLedgerId { get; set; } // ToDetaiLedgerId
        public string FromSubsidiaryLedgerCode { get; set; } // FromSubsidiaryLedgerCode
        public string ToSubsidiaryLedgerCode { get; set; } // ToSubsidiaryLedgerCode
        public long? FromSubsidiaryLedgerId { get; set; } // FromSubsidiaryLedgerId
        public long? ToSubsidiaryLedgerId { get; set; } // ToSubsidiaryLedgerId
        public int? FromBankDepositId { get; set; } // FromBankDepositId
        public int? ToBankDepositId { get; set; } // ToBankDepositId
        public string ReceiptNumber { get; set; } // ReceiptNumber
        public long? TrakingNumber { get; set; } // TrakingNumber
        public long VoucherMasterId { get; set; } // VoucherMasterId
        public decimal? RemainValue { get; set; } // RemainValue
        public int? ReasonId { get; set; } // ReasonId //
        public int? ProductId { get; set; } // ProductId
        public string ProductSymbol { get; set; }
        public string ProductTitle { get; set; }
        public string Isin { get; set; } // ISIN
        public int? BranchId { get; set; } // BranchId
        public string Description { get; set; } // Description
        public DateTime? DueDate { get; set; } // DueDate
        public string DueDateJalali => DueDate?.ConvertMiladiToJalali();

        public int? ChequeType { get; set; } // ChequeType
        public ChequeType ChequeTypeEnum { get; set; } 
        public string ChequeNumber { get; set; } // ChequeNumber
        public string CreatedBy { get; set; } // CreatedBy
        public DateTime Created { get; set; } // Created
        public string CreatedJalali => Created.ConvertMiladiToJalali(true);
        public string ModifiedBy { get; set; } // ModifiedBy
        public DateTime Modified { get; set; } // Modified
        public string CashFlowCategoryTitle { get; set; }
        public string FromSubsidiaryLedgerTitle { get; set; }
        public string ToSubsidiaryLedgerTitle { get; set; }
        public string FromDetaiLedgerTitle { get; set; }
        public string ToDetaiLedgerTitle { get; set; }
        public string FromBankDepositAccountNumber { get; set; }
        public string FromBankDepositIBAN { get; set; }
        public string FromBankDepositBankTitle { get; set; }
        public string ToBankDepositAccountNumber { get; set; }
        public string ToBankDepositIBAN { get; set; }
        public string ToBankDepositBankTitle  { get; set; }

        
    }
}
