using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class SearchLedgerFilter
    {
        public string SearchPhrase { get; set; }
        public AccountClassEnum? AccountClassEnum { get; set; }
        public string GeneralLedgerCode { get; set; }

    }
}
