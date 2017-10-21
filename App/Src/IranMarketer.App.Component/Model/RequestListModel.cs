using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Component.Model
{
    public class RequestListModel 
    {
        public long? FromRequestId { get; set; }
        public long? ToRequestId { get; set; }
        public long? PartyId { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public Domain.Enum.RequestTransactionType? RequestTransactionType { get; set; }
        public Domain.Enum.RequestTransactionState? RequestTransactionState { get; set; }
        public decimal? FromSubscriptionAmount { get; set; }
        public decimal? ToSubscriptionAmount { get; set; }
        public int? BranchId { get; set; }
        public long? CreatedByPartyId { get; set; }
        public decimal? FromRedemptionVolume { get; set; }
        public decimal? ToRedemptionVolume { get; set; }
        public Domain.Enum.RequestSettlementType? RequestSettlementType { get; set; }
        public PartyType? PartyType { get; set; }

    }
}