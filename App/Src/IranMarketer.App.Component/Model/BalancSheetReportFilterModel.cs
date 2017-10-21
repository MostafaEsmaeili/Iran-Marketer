using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Component.Model
{
   public class BalancSheetReportFilterModel
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
    }
}
