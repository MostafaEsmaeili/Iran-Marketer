using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Filters
{
    public class BaseReportFilter<T>
    {
        public T ReportFilter { get; set; }
        public OptionalFilter OptionalFilter { get; set; }
        public string AuthenticatedUserName { get; set; }
        public int BranchId { get; set; }
        public string BranchCode { get; set; }
        public string PartyName { get; set; }
        public long PartyId { get; set; }
        public string RoleName { get; set; }
        public string RoleId { get; set; }
    }

    public class OptionalFilter
    {
        public int take { get; set; }
        public int skip { get; set; }
        public int page { get; set; }
        public string value { get; set; }
        public List<Sort> sort { get; set; }
    }

    public class Sort
    {
        public string field { get; set; }
        public string dir { get; set; }
    }

}
