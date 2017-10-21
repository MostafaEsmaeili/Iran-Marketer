using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class BankTransferModel
    {
        public int FromBankDepositId { get; set; }
        public string FromBankDepositAccountNumber { get; set; }
        public int ToBankDepositId { get; set; }
        public string ToBankDepositAccountNumber { get; set; }
        public string Date { get; set; }
        public decimal Amount { get; set; }
        public int BranchId { get; set; }
        public string Description { get; set; }

    }
}
