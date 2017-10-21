using System.Runtime.Serialization;

namespace IranMarketer.Domain
{
    [DataContract]
    public class ApplicationUserResponse : BaseServiceResponse
    {
        [DataMember]
        public string UserId { get; set; }
        [DataMember]
        public string UserName { get; set; }
    }
}