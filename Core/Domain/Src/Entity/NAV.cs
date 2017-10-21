using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    [Table("NAV", Schema = "mf")]
    public class NAV : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; }
        public DateTime Date { get; set; }
        public decimal SubscriptionNAV { get; set; }
        public decimal RedemptionNAV { get; set; }
        public decimal StaticalNAV { get; set; }
        public decimal NetAssetValue { get; set; }
        public decimal TotalUnit { get; set; }
        public decimal TotalSubscriptionUnit { get; set; }
        public decimal TotalRedemptionUnit { get; set; }
        public decimal SubscriptionUnit { get; set; }
        public decimal RedemptionUnit { get; set; }
        public decimal TotalInvestor { get; set; }
        public decimal TotalRetailInvestor { get; set; }
        public decimal TotalInstitutionalInvestor { get; set; }
        public decimal InstitutionalInvestorUnits { get; set; }
        public decimal RetailInvestorUnits { get; set; }
        public decimal InstitutionalInvestorUnitPercent { get; set; }
        public decimal RetailInvestorUnitsPercent { get; set; }
        public int Status { get; set; }
        public int CalculationMode { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
      
    }
}
