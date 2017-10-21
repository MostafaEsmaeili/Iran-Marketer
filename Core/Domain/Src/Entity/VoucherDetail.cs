using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Entity
{
    // VoucherDetail
    [Table("VoucherDetail", Schema = "acc")]
    public class VoucherDetail : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; } // Id (Primary key)
        public long VoucherMasterId { get; set; } // VoucherMasterId
        public long VoucherMasterTempNumber { get; set; } // VoucherMasterTempNumber
        public long GeneralLedgerId { get; set; } // GeneralLedgerId
        public long SubsidiaryLedgerId { get; set; } // SubsidiaryLedgerId
        public long DetailLedgerId { get; set; } // DetailLedgerId
        public string GeneralLedgerCode { get; set; } // GeneralLedgerCode
        public string SubsidiaryLedgerCode { get; set; } // SubsidiaryLedgerCode
        public string DetailLedgerCode { get; set; } // DetailLedgerCode
        public decimal Credit { get; set; } // Credit
        public decimal Debit { get; set; } // Debit
        public string Description { get; set; } // Description
        public int Status { get; set; } // Status
        public int RowNumber { get; set; } // RowNumber
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified

        public VoucherDetail()
        {
            
        }

        public VoucherDetail(string detailLedgerCode, string subsidiaryLedgerCode, decimal debit, decimal credit)
        {
            this.DetailLedgerCode = detailLedgerCode;
            SubsidiaryLedgerCode = subsidiaryLedgerCode;
            this.Credit = credit;
            this.Debit = debit;
            Created = DateTime.Now;
            Modified = DateTime.Now;
            Status = (int) VoucherDetailState.Confirm;
        }

        public VoucherDetail(string detailLedgerCode,string subsidiaryLedgerCode, decimal debit, decimal credit, string description)
        {
            this.DetailLedgerCode = detailLedgerCode;
            SubsidiaryLedgerCode = subsidiaryLedgerCode;
            this.Description = description;
            this.Credit = credit;
            this.Debit = debit;
            Created = DateTime.Now;
            Modified = DateTime.Now;
            Status = (int) VoucherDetailState.Confirm;
        }

        public VoucherDetail(string detailLedgerCode,string subsidiaryLedgerCode, decimal debit, decimal credit, VoucherDetailState state)
        {
            this.DetailLedgerCode = detailLedgerCode;
            SubsidiaryLedgerCode = subsidiaryLedgerCode;
            this.Credit = credit;
            this.Debit = debit;
            Created = DateTime.Now;
            Modified = DateTime.Now;
            Status = (int) state;
        }
    }

}

