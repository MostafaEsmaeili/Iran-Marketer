using System.Runtime.Serialization;

namespace IranMarketer.Domain
{
    public class UserRoleRequest 
    {
        [DataMember]
        public string UserId { get; set; }
        [DataMember]
        public string RoleName { get; set; }
    }
}