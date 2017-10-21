using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.DTO
{
    public class CashFlowDetail
    {
        public long Id { get; set; }
        public long CashFlowMasterId { get; set; }
        public decimal Amount { get; set; }
        public long ToPartyId { get; set; }
        public long ToDetaiLedgerId { get; set; }
        public long ToSubsidiaryLedgerId { get; set; }
        public long DebitVoucherDetailId { get; set; }
        public long CreditVoucherDetailId { get; set; }
        public string PartyFullName { get; set; }
        public string NationalId { get; set; }
        public string ToDetaiLedgerCode { get; set; }
        public string ToSubsidiaryLedgerTitle { get; set; }
        public string ToSubsidiaryLedgerCode { get; set; }

    }
}
