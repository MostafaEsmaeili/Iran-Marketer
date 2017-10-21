using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class CustomerPaymentsFilterModel : BaseModel
    {
        public string Date { get; set; }
        public long PartyId { get; set; }
        public int PartyType { get; set; }
        public string NationalId { get; set; }
        public decimal FromRemain { get; set; }
        public decimal ToRemain { get; set; }
        public int PaymentTypes { get; set; }
    }
}
