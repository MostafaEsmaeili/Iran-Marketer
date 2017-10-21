using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class UpdateRequestState
    {
        public long RequestId { get; set; }
        public string ModifiedBy { get; set; } // ModifiedBy
        public string ModifiedByName { get; set; } // ModifiedByName
        public long ModifiedByPartyId { get; set; } // ModifiedByPartyId
        public RequestTransactionState RequestTransactionState { get; set; }
        public int BranchId { get; set; }
        public string BranchName { get; set; }
    }
}
