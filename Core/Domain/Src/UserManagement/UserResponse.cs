using System.Runtime.Serialization;
using IranMarketer.Domain.DTO;

namespace IranMarketer.Domain
{
    [DataContract]
    public class UserResponse : BaseServiceResponse
    {
        [DataMember]
        public ApplicationUserDTO ApplicationUserDto { get; set; }
    }
}