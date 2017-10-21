using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class CustomerPaymentItemModel
    {
        public List<string> SelectItems { get; set; }

        public int BankDepositId { get; set; }

        public string Date { get; set; }

        public decimal TotalAmount { get; set; }

        public string ChequeNumber { get; set; }

        public string DueDate { get; set; }
        
    }
}
