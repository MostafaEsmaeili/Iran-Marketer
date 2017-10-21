using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class AccountBookFilter : BaseFilter
    {
        public int FiscalYearId { get; set; }
        public long FromVoucherId { get; set; }
        public long ToVoucherId { get; set; }
     
        public long SubsidiaryLedgerId { get; set; }
        public long DetailLedgerId { get; set; }
        public List<VoucherCategoryEnum> VoucherCategoryExceptions { get; set; }
        public int BranchId { get; set; }
        public decimal FromCredit { get; set; }
        public decimal ToCredit { get; set; }
        public decimal FromDebit { get; set; }
        public decimal ToDebit { get; set; }
        public decimal FromRemain { get; set; }
        public decimal ToRemain { get; set; }
        public VoucherMasterState? VoucherMasterState { get; set; }



    }
}
