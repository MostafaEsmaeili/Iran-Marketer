using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.DTO
{
    public class BankTransfer
    {
        public int FromBankDepositId { get; set; }
        public int ToBankDepositId { get; set; }
        public string FromBankDepositAccountNumber { get; set; }
        public string ToBankDepositAccountNumber { get; set; }
        public DateTime Date { get; set; }
        public decimal Amount { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
        public int BranchId { get; set; }
        public string Description { get; set; }

    }
}
