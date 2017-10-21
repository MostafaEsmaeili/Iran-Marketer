using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class FlatVoucherMasterReportFilter : BaseFilter
    {
        public long VoucherMasterId { get; set; }
        public long VoucherNumber { get; set; }
        public int BranchId { get; set; }
        public int FiscalYearId { get; set; }
        public string DetailLegderCode { get; set; }
        public string SubsidiaryLedgerCode { get; set; }
        public string GeneralLedgerCode { get; set; }
        public VoucherInsertMode? VoucherInsertMode { get; set; }
        public VoucherCategoryEnum? VoucherCategoryEnum { get; set; }
    }
}
