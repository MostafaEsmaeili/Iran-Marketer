using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class VoucherDetail
    {
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
        public string VoucherMasterDateJalali { get; set; }
        public DateTime VoucherMasterDate { get; set; }
        public DateTime VoucherMasterCreateDate { get; set; }
        public string VoucherMasterCreateDateJalali { get; set; }
        public int VoucherMasterCategory { get; set; }
        public VoucherCategoryEnum VoucherMasterCategoryEnum => ((VoucherCategoryEnum)VoucherMasterCategory);
        public string VoucherMasterCategoryTitle => ((VoucherCategoryEnum)VoucherMasterCategory).GetDescription();
        public VoucherMasterState VoucherMasterStateEnum => ((VoucherMasterState)VoucherMasterState);
        public string VoucherMasterStateTitle => ((VoucherMasterState)VoucherMasterState).GetDescription();
        public int VoucherMasterState { get; set; }
        public VoucherInsertMode VoucherInsertModeEnum => ((VoucherInsertMode)VoucherMasterState);
        public string VoucherInsertModeTitle => ((VoucherInsertMode)VoucherInsertMode).GetDescription();
        public int VoucherInsertMode { get; set; }
        public int FiscalYeardId { get; set; }
        public string BranchName { get; set; }
        public string VoucherDescription { get; set; }



    }
}
