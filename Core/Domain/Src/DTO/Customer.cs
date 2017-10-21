using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.DTO
{
    public class Customer
    {
        public Party Party { get; set; }
        public Contact Contact { get; set; }
        public PartyBankAccount PartyBankAccount { get; set; }
        public Customer()
        {
            Party = new Party();
            Contact = new Contact();
            PartyBankAccount = new PartyBankAccount();
        }
    }
}
