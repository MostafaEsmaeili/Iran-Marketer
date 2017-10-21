using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class AccountBookFilterModel : BaseModel
    {
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public long SubsidiaryLedgerId { get; set; }
        public long DetailLedgersId { get; set; }
        public int BranchId { get; set; }
        public int FiscalYearId { get; set; }
        public long FromVoucherId { get; set; }
        public long ToVoucherId { get; set; }
        public List<int> VouhcerCategoryExcetionListCode { get; set; }
    }
}
