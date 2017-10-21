using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.DTO
{
    public class BankDepositProfitReceive
    {
        public DateTime Date { get; set; }
        public decimal Amount { get; set; }
        public int BankDepositId { get; set; }
        public string BankDepositAccountNumber { get; set; }
        public int BranchId { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }

        public string Description { get; set; }
    }
}
