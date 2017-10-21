using System.Collections.Generic;

namespace IranMarketer.Domain.Filters
{
    public class ReportFilter
    {
        public List<string> UserNames { get; set; }
        public DateFilter DateFilter { get; set; }
        public OptionalFilter OptionalFilter { get; set; }
        public string AuthenticatedUserName { get; set; }
        public string PartyName { get; set; }
        public long PartyId { get; set; }


    }
}