using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Common;
using Pikad.Framework.Infra.Utility;

using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class AdjustedPrice
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public string ISIN { get; set; }
        public decimal Value { get; set; }
        public int Type { get; set; }
        public DateTime FromDate { get; set; }
        public string FromDateJalali => FromDate.ConvertMiladiToJalali();
        public DateTime? ToDate { get; set; }
        public string ToDateJalali => ToDate?.ConvertMiladiToJalali();

        public string Description { get; set; }
        public string Reason { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
        public string Symbol { get; set; }
        public string ProductTitle { get; set; }
        public SecurityExchange SecurityExchange => ((SecurityExchange) SecurityExchangeId);
        public int SecurityExchangeId { get; set; }
        public string SecurityExchangeTitle => SecurityExchange.GetDescription();
        public List<AdjustedPriceReason> AdjustedPriceReasons { get; set; }
        public List<string> AdjustedPriceReasonsTitle { get; set; }
        public List<int> AdjustedPriceReasonsId { get; set; }
        public string TypeTitle => ((AdjustedPriceType)Type).GetDescription();
        public AdjustedPriceType TypeEnum => ((AdjustedPriceType) Type);
    }
}
