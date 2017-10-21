using Pikad.Framework.UnitOfWork;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.FastCrud;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Entity
{
    [Table("PartyBankAccount", Schema = "pm")]
    public class PartyBankAccount : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; }
        public long PartyId { get; set; }
        public string AccountNumber { get; set; }
        public int AccountType { get; set; }
        public string IBAN { get; set; }
        public int BankId { get; set; }
        public string BranchCode { get; set; }
        public string BranchName { get; set; }
        public bool IsDefault { get; set; }
        public int Status { get; set; }
        public string BankTitle { get; set; }
        public string BankTitleEn { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
    }
}
