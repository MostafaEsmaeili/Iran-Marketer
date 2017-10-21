using System.Collections.Generic;
using System.Runtime.Serialization;

namespace IranMarketer.Domain.DTO
{
    public class AuthenticationResponse
    {
        public string AccessToken { get; set; }
        public int LifeTime { get; set; }
        public ApplicationUserDTO ApplicationUser { get; set; }
        public string ClientId { get; set; }
        public bool HasAccess { get; set; }
        public List<string> Pages { get; set; }
    }
    [DataContract]
    public class UserLoginRequest 
    {
        [DataMember]
        public string UserName { get; set; }
        [DataMember]
        public string Password { get; set; }
        [DataMember]

        public string ClientId { get; set; }

        [DataMember]

        public string ClientPassword { get; set; } = null;

    }
}