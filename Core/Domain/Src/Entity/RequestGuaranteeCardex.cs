using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    // RequestGuaranteeCardex
    [Table("RequestGuaranteeCardex", Schema = "req")]
    public class RequestGuaranteeCardex : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; } // Id (Primary key)
        public long? RequestId { get; set; } // RequestId
        public long? VoucherDetailId { get; set; } // VocherDetailId
        public long PartyId { get; set; } // PartyId
        public string NationalId { get; set; } // NationalId
        public string PartyFullName { get; set; } // PartyFullName
        public DateTime Date { get; set; } // Date
        public decimal? GuaranteeAmount { get; set; } // Amount
        public decimal RedemptionNAV { get; set; }
        public decimal SubscriptionNAV { get; set; }
        public int TDays { get; set; }
        public decimal PPUSum { get; set; }
        public int CalculationState { get; set; }
        public int GuaranteeState { get; set; }
        public decimal RateFactor { get; set; }
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified

    }

}
// </auto-generated>
