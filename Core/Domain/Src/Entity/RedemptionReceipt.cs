using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Entity
{
    
    public class RedemptionReceipt : IEntity<long>
    {
        public long Id { get; set; }
        public string FundTitle { get; set; }
        public string SeoRegisterNumber { get; set; }
        public string FundNationalIdentification { get; set; }
        public DateTime Date { get; set; }
        public string DataJalali => Date.ConvertMiladiToJalali(true);
        public string AccountNumber { get; set; } // AccountNumber
        public decimal? Amount { get; set; } // Amount
        public decimal Price { get; set; } // Price
        public decimal Volume { get; set; } // Volume
        public string EvidenceNumber { get; set; } // EvidenceNumber
        public string DepositTranckigNumber { get; set; } // DepositTranckigNumber
        public string BankName { get; set; }
        public long RequestId { get; set; }
        public string PartyFullName { get; set; } // PartyFullName
        public string PartyTypeName => ((PartyType) PartyType).GetDescription();
        public int PartyType { get; set; } // PartyFullName
        public DateTime? BirthDate { get; set; }
        public DateTime? RegisterDate { get; set; }
        public string IdentityCard { get; set; }
        public string BirthDateJalali => BirthDate?.ConvertMiladiToJalali();
        public string RegisterDateJalali => RegisterDate?.ConvertMiladiToJalali();
        public int Gender { get; set; }
        public string GenderName => ((Enum.Gender) Gender).GetDescription();
        public string NationalId { get; set; }
        public string HomePhone { get; set; }
        public string BusinessPhone { get; set; }
        public string Mobile { get; set; }
        public string Fax { get; set; }
        public string HomeAddress { get; set; }
        public string BusinessAddress { get; set; }
        public string PostalCode { get; set; }
        public string WebPage { get; set; }
        public string IMAddress { get; set; }
        public string Email1 { get; set; }
        public string Email2 { get; set; }
        public string Email3 { get; set; }
        public string CustomerAccountNumber { get; set; }
        public int CustomerAccountType { get; set; }
        public string CustomerAccountIBAN { get; set; }
        public string CustomerAccountBranchCode { get; set; }
        public string CustomerAccountBranchName { get; set; }
        public string FundBranchName { get; set; }
        public string FundBranchManagerTitle { get; set; }


    }
}
