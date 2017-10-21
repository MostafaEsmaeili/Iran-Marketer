using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class AccountBalanceFilter 
    {
        public DateFilter DateFilter { get; set; }
        public int FiscalYearId { get; set; }
        public string SubsidiaryLedgerCode { get; set; }
        public string DetailLedgerCode { get; set; }
        public long SubsidiaryLedgerId { get; set; }
        public long DetailLedgerId { get; set; }
        public string GeneralLedgerCode { get; set; }
        public long GeneralLedgerId { get; set; }
        public List<int> VoucherCategoryExceptionsCodes { get; set; }
        public AccountBalanceLevel AccountBalanceLevel { get; set; }
    }
}
