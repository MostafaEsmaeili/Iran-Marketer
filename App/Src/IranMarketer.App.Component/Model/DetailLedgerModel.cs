using IranMarketer.Domain.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class DetailLedgerModel
    {
        public List<string> AccountCodes { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public List<int> VouhcerCategoryExcetionListCode { get; set; }
        public int FiscalYearId { get; set; }
        public BalanceSheetColumnType BalanceSheetColumnType { get; set; }
        public int BranchId { get; set; }
        public long FromVoucherNumber { get; set; }
        public long ToVoucherNumber { get; set; }
        public AccountBalanaceRemainType? AccountRemainingType { get; set; }
        public string SubsidiaryLedgerCodeName { get; set; }
        public string SubsidiaryLedgerCode { get; set; }
        public string FromDetailLedgerCode { get; set; }
        public string ToDetailLedgerCode { get; set; }
    }
}
