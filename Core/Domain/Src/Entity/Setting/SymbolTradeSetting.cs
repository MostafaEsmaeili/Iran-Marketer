using System;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Entity.Setting
{
    public class SymbolTradeSetting
    {
        public long ProductId { get; set; }
        public string ISIN { get; set; }
        public int ProductType { get; set; }
        public int SecurityExchange { get; set; }
        public string Symbol { get; set; }
        public string Title { get; set; }
        //public SymbolTypeStatus SymbolTypeStatus { get; set; }
        public DateTime Modified { get; set; }
        public DateTime Date { get; set; }
        public string BrokerCode { get; set; }
        public int BrokerId { get; set; }


    }

}
