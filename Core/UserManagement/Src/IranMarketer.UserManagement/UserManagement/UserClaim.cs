using System;

namespace IranMarketer.UserManagement
{
    public partial class IdentityUserClaim<TKey>
    {
        public IdentityUserClaim()
        {
            Id = Guid.NewGuid().ToString();
        }
        public string Id { get; set; }
        public TKey UserId { get; set; }
        public string ClaimValue { get; set; }
        public string ClaimType { get; set; }
    }
}
