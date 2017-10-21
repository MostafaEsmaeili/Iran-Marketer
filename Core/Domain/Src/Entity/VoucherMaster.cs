using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    // VoucherMaster

    [Table("VoucherMaster", Schema = "acc")]
    public class VoucherMaster : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; } // Id (Primary key)
        public DateTime VoucherDate { get; set; }
        public int FiscalYearId { get; set; } // FiscalYearId
        public int VoucherStateId { get; set; } // VoucherStateId
        public int VoucherCategoryId { get; set; } // VoucherCategoryId
        public int? VoucherGroupId { get; set; } // VoucherGroupId
        public long VoucherNumber { get; set; } // VoucherNumber
        public long DailyNumber { get; set; } // DailyNumber
        public string Description { get; set; } // Description
        public int InsertMode { get; set; } // InsertMode
        public int BranchId { get; set; } // BranchId
        public string BranchName { get; set; } //branchName
        public string CreatedBy { get; set; } // CreatedBy
        public string CreatedByName { get; set; } // CreatedByName
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified

        // Foreign keys
        //public virtual FiscalYear FiscalYear { get; set; } // FK_VoucherMaster_FiscalYear
        //public virtual VoucherCategory VoucherCategory { get; set; } // FK_VoucherMaster_VoucherCategory
        //public virtual VoucherGroup VoucherGroup { get; set; } // FK_VoucherMaster_VoucherGroup
        
       
    }

}
// </auto-generated>
