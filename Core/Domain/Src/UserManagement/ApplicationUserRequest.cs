using System.Runtime.Serialization;
using IranMarketer.Domain.DTO;

namespace IranMarketer.Domain
{
    public class ApplicationUserRequest
    {
        [DataMember]
        public ApplicationUserDTO ApplicationUser { get; set; }
    }
}