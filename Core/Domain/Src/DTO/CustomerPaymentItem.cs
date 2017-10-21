using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.DTO
{
    public class CustomerPaymentItem
    {
        public long DetailLedgerId { get; set; }
        public string DetailLedgerCode { get; set; }
        public long SubsidiaryLedgerId { get; set; }
        public string SubsidiaryLedgerCode { get; set; }
        public long PartyId { get; set; }
        public int BankDepositId { get; set; }
        public DateTime Date { get; set; }
        public DateTime? DueDate { get; set; }
        public string ChequeNumber { get; set; }
        public decimal Amount { get; set; }
        public decimal TotalAmount { get; set; }
        public int BranchId { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
    }
}
