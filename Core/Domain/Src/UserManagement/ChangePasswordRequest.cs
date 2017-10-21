using System.Runtime.Serialization;

namespace IranMarketer.Domain
{
    [DataContract]
    public class ChangePasswordRequest 
    {
        [DataMember]
        public string UserId { get; set; }
        [DataMember]
        public string OldPassword { get; set; }
        [DataMember]
        public string NewPassword { get; set; }
    }
}