using System;

namespace IranMarketer.Domain.Entity.Setting
{
    public class BrokerTradeSetting
    {
        public int Id { get; set; }
        public int BrokerId { get; set; }
        public string BrokerName { get; set; }
        public int BrokerCode { get; set; }
        public DateTime LastChangeDate { get; set; }
        public DateTime Date { get; set; }
        //public BrokerTypeStatus BrokerTypeStatus { get; set; }
    }
}
