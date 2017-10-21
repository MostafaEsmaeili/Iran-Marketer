using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class BankDepositProfitModel
    {
        public string Date { get; set; }
        public decimal Amount { get; set; }
        public int BankDepositId { get; set; }
        public string BankDepositAccountNumber { get; set; }
        public int BranchId { get; set; }
        public string Description { get; set; }


    }
}
