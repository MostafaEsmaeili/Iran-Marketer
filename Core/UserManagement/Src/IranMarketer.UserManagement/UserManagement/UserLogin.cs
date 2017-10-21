using System;

namespace IranMarketer.UserManagement
{
    public partial class IdentityUserLogin<TKey>
    {
        public IdentityUserLogin()
        {
            Id = Guid.NewGuid().ToString();
        }
        public string Id { get; set; }
        public TKey UserId { get; set; }
        public string LoginProvider { get; set; }
        public string ProviderKey { get; set; }
    }
}
