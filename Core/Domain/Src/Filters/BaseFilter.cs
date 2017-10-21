using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Filters
{
    public class BaseFilter
    {
        public DateFilter DateFilter { get; set; }

        public int PageIndex { get; set; }

        public int PageSize { get; set; }


    }
}
