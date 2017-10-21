using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class BankDeposit
    {
        public int Id { get; set; } // Id (Primary key)
        public string AccountNumber { get; set; } // AccountNumber
        public BankAccountType AccountTypeEnum { get; set; } // AccountType
        public int AccountType { get; set; } // AccountType
        public string AccountTypeName { get; set; } // AccountType
        public string Iban { get; set; } // IBAN
        public bool UseForRquest { get; set; } // UseForRquest
        public string OpeningDate { get; set; } // OpeningDate
        public string ProfitStartDate { get; set; } // ProfitStartDate
        public string EndDate { get; set; } // EndDate
        public string AccountCode { get; set; } // AccountCode
        public long DetailLedgerId { get; set; }
        public int BankId { get; set; } // BankId
        public string BranchCode { get; set; } // BranchCode
        public decimal Interest { get; set; } // Interest
        public decimal ManagerWage { get; set; } // ManagerWage
        public bool HasManagerWage { get; set; } // HasManagerWage
        public string BranchName { get; set; } // BranchName
        public BankDepositState State { get; set; } // State
        public string StateTitle { get; set; } // State
        public string FullBankName => BankTitle + '-' + BranchName+"-"+AccountNumber;
        public string BankTitle { get; set; } // BankTitle
        public string BankTitleEn { get; set; } // BankTitleEn
        public DateTime? ValidFrom { get; set; } // ValidFrom
        public DateTime? ValidUntil { get; set; } // ValidUntil
        public DateTime? Created { get; set; } // Created
        public DateTime? Modified { get; set; } // Modified
        public string CreatedBy { get; set; } // CreatedBy
        public string ModifiedBy { get; set; } // ModifiedBy
        public decimal MaxProfitRateInSameType { get; set; }
        public int DayofInterestInMonth { get; set; }
        public bool IsInterestInLastDayOfMonth { get; set; }
    }
}
