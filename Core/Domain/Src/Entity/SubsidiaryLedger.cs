using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    // SubsidiaryLedger
    [Table("SubsidiaryLedger", Schema = "acc")]
    public class SubsidiaryLedger : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; } // Id (Primary key)
        public string Title { get; set; } // Title
        public string Code { get; set; } // Code
        public string FriendlyCode { get; set; } // FriendlyCode
        public int? Status { get; set; } // Status
        public string Description { get; set; } // Description
        public long GeneralLedgerId { get; set; } // GeneralLedgerId
        [NotMapped]
        public string GeneralLedgerCode { get; set; } // GeneralLedgerId
        public int ClassId { get; set; }
        public int? CategoryId { get; set; } // CategoryId
        public int? NatureId { get; set; } // NatureId
        public bool? HasDetail { get; set; } // HasDetail
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified
        public string Map { get; set; }
        [NotMapped]
        public string FullTitle => Code + "-" + Title;

        // Foreign keys
       // public virtual AccountCategory AccountCategory { get; set; } // FK_SubsidiaryLedger_AccountCategory
        //public virtual GeneralLedger GeneralLedger { get; set; } // FK_SubsidiaryLedger_GeneralLedger
        
        
    }

}

