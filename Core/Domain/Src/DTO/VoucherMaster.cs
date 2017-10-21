using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class VoucherMaster
    {
        public long Id { get; set; } // Id (Primary key)
        public DateTime VoucherDate { get; set; }
        public string VoucherDateJalali { get; set; }
        public int FiscalYearId { get; set; } // FiscalYearId
        public int VoucherStateId { get; set; } // VoucherStateId
        public int VoucherCategoryId { get; set; } // VoucherCategoryId
        public int VoucherGroupId { get; set; } // VoucherGroupId
        public long VoucherNumber { get; set; } // VoucherNumber
        public long DailyNumber { get; set; } // DailyNumber
        public string Description { get; set; } // DescriptionCreatedJalali
        public int InsertMode { get; set; } // InsertMode
        public int BranchId { get; set; } // BranchId
        public string BranchName { get; set; } //branchName
        public string CreatedBy { get; set; } // CreatedBy
        public string CreatedByName { get; set; } // CreatedByName
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified
        public VoucherInsertMode InsertModeEnum => ((VoucherInsertMode)InsertMode);
        public string InsertModeTitle => InsertModeEnum.GetDescription();
        public string CreatedJalali { get; set; }
        public string ModifiedJalali { get; set; }
        public string FiscalYearTitle { get; set; } // FiscalYearId

        public VoucherCategoryEnum VoucherCategoryEnum => ((VoucherCategoryEnum) VoucherCategoryId);
        public string VoucherCategoryTitle => VoucherCategoryEnum.GetDescription();


    }
}
