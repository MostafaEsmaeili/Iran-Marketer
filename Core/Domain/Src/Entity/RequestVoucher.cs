using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    // RequestVoucher
    [Table("RequestVoucher", Schema = "req")]
    public class RequestVoucher : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; } // Id (Primary key)
        public long RequestId { get; set; } // RequestId
        public long? VoucherMasterId { get; set; } // VoucherMasterId
        public long? VoucherDetailRowId { get; set; } // VoucherDetailRowId
        public long? EvidenceVouhcerMasterId { get; set; } // EvidenceVouhcerMasterId
        public long? EvidenceVoucherDetailRowId { get; set; } // EvidenceVoucherDetailRowId
        public int State { get; set; } // State
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified

        // Foreign keys
        //public virtual VoucherDetail EvidenceVoucherDetail { get; set; } // FK_RequestVoucher_VoucherDetail1
        //public virtual VoucherDetail VoucherDetail { get; set; } // FK_RequestVoucher_VoucherDetail
        //public virtual VoucherMaster EvidenceVouhcerMaster{ get; set; } // FK_RequestVoucher_VoucherMaster1
        //public virtual VoucherMaster VouhcerMaster { get; set; } // FK_RequestVoucher_VoucherMaster
        //public virtual Request Request { get; set; } // FK_RequestVoucher_Request
    }

}

