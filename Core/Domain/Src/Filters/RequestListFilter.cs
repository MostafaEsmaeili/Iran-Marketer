using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class RequestListFilter : BaseFilter
    {
        public long? FromRequestId { get; set; }
        public long? ToRequestId { get; set; }
        public long? PartyId { get; set; }
        public RequestTransactionType? RequestTransactionType { get; set; }
        public RequestTransactionState? RequestTransactionState { get; set; }
        public decimal? FromSubscriptionAmount { get; set; }
        public decimal? ToSubscriptionAmount { get; set; }
        public int? BranchId { get; set; }
        public long? CreatedByPartyId { get; set; }
        public decimal? FromRedemptionVolume { get; set; }
        public decimal? ToRedemptionVolume { get; set; }
        public RequestSettlementType? RequestSettlementType { get; set; }
        public PartyType? PartyType { get; set; }

    }
}
