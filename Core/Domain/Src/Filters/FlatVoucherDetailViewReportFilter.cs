using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Filters
{
    public  class FlatVoucherDetailViewReportFilter : BaseFilter
    {
        public long VoucherMasterId { get; set; }
        public int? FiscalYearId { get; set; }

    }
}
