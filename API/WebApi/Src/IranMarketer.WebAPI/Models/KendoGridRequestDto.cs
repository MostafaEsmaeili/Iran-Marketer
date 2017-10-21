using System.Collections.Generic;

namespace IranMarketer.WebAPI
{
    public class KendoGridFilterDTO
    {
        public int PageSize { get; set; }
        public int Page { get; set; }
        public List<SortCriteria> Sort { get; set; }
        public List<FilterCriteria> Filter { get; set; }
    }

    public class SortCriteria
    {
        public string field { get; set; }
        public string dir { get; set; }
    }

    public class FilterCriteria
    {
        public string field { get; set; }
        public string operatora { get; set; }
        public string value { get; set; }
    }


    

    
}