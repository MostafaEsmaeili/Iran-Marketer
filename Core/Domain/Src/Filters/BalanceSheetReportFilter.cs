using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class BalanceSheetReportFilter : BaseFilter
    {
        public List<string> AccountCodes { get; set; }
        public List<int> VouhcerCategoryExcetionListCode { get; set; }
        public int FiscalYearId { get; set; }
        public BalanceSheetColumnType BalanceSheetColumnType { get; set; }
        public int BranchId { get; set; }
        public long FromVoucherNumber { get; set; } = 0;
        public long ToVoucherNumber { get; set; } = long.MaxValue;

        public string SubsidiaryLedgerCode { get; set; }
        public string FromDetailLedgerCode { get; set; }
        public string ToDetailLedgerCode { get; set; }

        public AccountBalanaceRemainType? AccountBalanaceRemainType { get; set; }
    }
}
