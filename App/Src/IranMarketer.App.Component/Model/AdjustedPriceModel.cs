using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Component.Model
{
    public class AdjustedPriceModel : BaseModel
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public string ISIN { get; set; }
        public decimal Value { get; set; }
        public int Type { get; set; }
        public string FromDateJalali { get; set; }
        public string ToDateJalali { get; set; }
        public string Description { get; set; }
        public string Reason { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
        public string Symbol { get; set; }
        public string ProductTitle { get; set; }

        public int SecurityExchangeId { get; set; }

        public string TypeTitle { get; set; }

        public List<AdjustedPriceReason> AdjustedPriceReasons { get; set; }
        public List<string> AdjustedPriceReasonsTitle { get; set; }
        public List<int> AdjustedPriceReasonsId { get; set; }
    }

    public class AdjustedPriceReasonModel
    {
        public int ID { get; set; }
        public string Title { get; set; }
    }
}
