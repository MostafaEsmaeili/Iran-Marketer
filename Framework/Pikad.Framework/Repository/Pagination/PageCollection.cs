using System.Collections.Generic;

namespace Bargozideh.Framework.Repository.Pagination
{
    public class PageCollection<T>
    {
        public List<T> ResultList { get; set; }
        public long TotalRecords { get; set; }
        public long PageSize { get; set; }
        public long CurrentPageNumber { get; set; }
        public object CustomValue { get; set; }
        public decimal TotalSumOne { get; set; }
        public decimal TotalSumTwo { get; set; }
        public decimal TotalSumThree { get; set; }
        public decimal TotalSumFour { get; set; }
 
    }
}
