using System.Runtime.Serialization;

namespace IranMarketer.Domain
{
    [DataContract]
    public class UserRequest 
    {
        [DataMember]
        public string UserId { get; set; }
    }
}