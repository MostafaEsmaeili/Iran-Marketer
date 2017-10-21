using System.Runtime.Serialization;

namespace IranMarketer.Domain
{
    [DataContract]
    public class UserRoleResponse : BaseServiceResponse
    {
        [DataMember]
        public string UserId { get; set; }
    }
}