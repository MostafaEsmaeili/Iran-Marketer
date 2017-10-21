using System.Collections.Generic;


namespace IranMarketer.WebAPI
{
    public class ApiPagedCollectionResponse<T>{
      
        public List<T> Result { get; set; }
  
        public long TotalRecords { get; set; }

        public long PageSize { get; set; }
      
        public string Message { get; set; }

        public int BRuleCode { get; set; }

        public decimal TotalAggrigatedValue1 { get; set; }
        public decimal TotalAggrigatedValue2 { get; set; }

        public decimal TotalAggrigatedValue3 { get; set; }

        public decimal TotalAggrigatedValue4 { get; set; }

    }
}