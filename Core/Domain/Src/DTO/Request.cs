using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class Request
    {
        public long Id { get; set; } // Id (Primary key)
        public long PrePartyRequestId { get; set; } // PrePartyRequestId
        public DateTime Date { get; set; } // Date
        public string DateJalali => Date.ConvertMiladiToJalali(true);
        public DateTime? ConfirmationDate { get; set; } // ConfirmationDate
        public string ConfirmationDateJalali => ConfirmationDate?.ConvertMiladiToJalali();
        public DateTime? ProcessDate { get; set; } // ProcessDate
        public string ProcessDateJalali => ProcessDate?.ConvertMiladiToJalali();
        public DateTime? EmissionDate { get; set; } // EmissionDate
        public string EmissionDateJalali => EmissionDate?.ConvertMiladiToJalali();
        public long? NavId { get; set; } // NAVId
        public long PartyId { get; set; } // PartyId
        public string NationalId { get; set; } // NationalId
        public int? BankDepositId { get; set; } // BankDepositId
        public long? VoucherMasterId { get; set; } // VoucherMasterId
        public int TransactionType { get; set; } // TransactionType
        public RequestTransactionType TransactionTypeEnum => ((RequestTransactionType)TransactionType);
        public string TransactionTypeTitle => TransactionType>0?((RequestTransactionType)TransactionType).GetDescription():null;
        public string PartyFullName { get; set; } // PartyFullName
        public decimal? Amount { get; set; } // Amount
        public decimal Price { get; set; } // Price
        public decimal Volume { get; set; } // Volume
        public decimal? RemainVolume { get; set; } // RemainVolume
        public decimal? EvidenceVolume { get; set; } // EvidenceVolume
        public int State { get; set; } // State
        public string StateTitle => State>0?((RequestTransactionState)State).GetDescription():null;
        public RequestTransactionState StateEnum => ((RequestTransactionState)State);
        public string AccountNumber { get; set; } // AccountNumber
        public string CustomerAccountCode { get; set; } // CustomerAccountCode
        public string CustomerAccountNumber { get; set; } // CustomerAccountNumber
        public string TicketNumber { get; set; } // TicketNumber
        public decimal? Tax { get; set; } // Tax
        public decimal? Toll { get; set; } // Toll
        public decimal? TotalFee { get; set; } // TotalFee
        public decimal? VariableFee { get; set; } // VariableFee
        public decimal? FixedFee { get; set; } // FixedFee
        public decimal? Discount { get; set; } // Discount
        public decimal? Penalty { get; set; } // Penalty
        public int BranchId { get; set; } // BranchId
        public string BranchName { get; set; } // BranchName
        public int? EvidenceState { get; set; } // EvidenceState
        public EvidenceState? EvidenceStateEnum => ((EvidenceState?) EvidenceState);
        public string EvidenceStateTitle => EvidenceState>0?((EvidenceState?)EvidenceState).GetDescription():null;

        public string EvidenceNumber { get; set; } // EvidenceNumber
        public string Note { get; set; } // Note
        public int? EvidenceType { get; set; } // EvidenceType
        public EvidenceType? EvidenceTypeEnum => ((EvidenceType?) EvidenceType);
        public string EvidenceTypeTitle => EvidenceType>0?((EvidenceType?)EvidenceType).GetDescription():null;

        public long? EvidenceVoucherId { get; set; } // EvidenceVoucherId

        /// <summary>
        /// نوع واریزی
        /// </summary>
        public int? SettlementType { get; set; } // SettlementType 
        public RequestSettlementType? SettlementTypeEnum => ((RequestSettlementType?) SettlementType);
        public string SettlementTypeTitle =>(SettlementType!=null && SettlementType.Value> 0)? ((RequestSettlementType?)SettlementType).GetDescription():null;

        public int? InsertMode { get; set; } // InsertMode
        public RequestInsertMode? InsertModeEnum => ((RequestInsertMode?) InsertMode);
        public string InsertModeTitle => InsertMode>0?((RequestInsertMode?) InsertMode).GetDescription():null;
        public int? DataSource { get; set; } // DataSource
        public string DepositTranckigNumber { get; set; } // DepositTranckigNumber
        public int? PrintCount { get; set; } // PrintCount
        public string CreatedBy { get; set; } // CreatedBy
        public string CreatedByName { get; set; } // CreatedByName
        public long? CreatedByPartyId { get; set; } // CreatedByPartyId
        public string ModifiedBy { get; set; } // ModifiedBy
        public string ModifiedByName { get; set; } // ModifiedByName
        public long? ModifiedByPartyId { get; set; } // ModifiedByPartyId
        public DateTime Created { get; set; } // Created
        public string CreatedJalali => Created.ConvertMiladiToJalali();
        public DateTime Modified { get; set; } // Modified
        public string ModifiedJalali => Modified.ConvertMiladiToJalali();
        public DateTime? DeletionDate { get; set; } // DeletionDate
        public bool IsEdited { get; set; }
        public string AccountCode { get; set; } //حسابداری
        public long DetailLedgerId { get; set; }
        public string BankName { get; set; }

        public bool CheckToConfirm { get; set; }
       
    }
}
