using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class CustomerPayment
    {
        public decimal Remain { get; set; }
        public long DetailLedgerId { get; set; }
        public long SubsidiaryLedgerId { get; set; }
        public string DetailLedgerCode { get; set; }
        public string SubsidiaryLedgerCode { get; set; }
        public string NationalId { get; set; }
        public string FullName { get; set; }
        public long PartyId { get; set; }
        public int PartyType { get; set; }
        public string AccountNumber { get; set; }
        public string BankTitle { get; set; }
        public int BankId { get; set; }
        public string IBAN { get; set; }
        public string PartyTypeTitle => ((Enum.PartyType) PartyType).GetDescription();
        public string CustomerPaymentTypeTitle => ((Enum.CustomerPaymentType)CustomerPaymentType).GetDescription();
        public CustomerPaymentType CustomerPaymentTypeEnum { get; set; }
        public int CustomerPaymentType { get; set; }

        public string SelectItem { get; set; }


    }
}
