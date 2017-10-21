using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class PartyBankAccount
    {
        public long Id { get; set; }
        public long PartyId { get; set; }
        public string AccountNumber { get; set; }
        public int AccountType { get; set; }
        public string IBAN { get; set; }
        public int BankId { get; set; }
        public string BranchCode { get; set; }
        public string BranchName { get; set; }
        public bool? IsDefault { get; set; }
        public int? Status { get; set; }
        public string BankTitle { get; set; }
        public string BankTitleEn { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
        public string NationalId { get; set; }
        public BankDepositState AccountStatus { get; set; }
        public string BankAccountTypeName { get; set; }
    }
}
