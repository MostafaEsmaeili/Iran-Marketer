using System;
using System.Runtime.Serialization;

namespace IranMarketer.Domain.DTO
{
    public class ApplicationUserDTO
    {

        [DataMember]
        public string UserId { get; set; }
        [DataMember]
        public string DisplayName { get; set; }
        [DataMember]
        public string DisplayNameFa { get; set; }
        [DataMember]
        public string DisplayNameEn { get; set; }
        [DataMember]
        public string RoleId { get; set; }
        [DataMember]
        public DateTime CreateDate { get; set; }
        [DataMember]
        public int Status { get; set; }
        [IgnoreDataMember]
        public string Password { get; set; }
        [IgnoreDataMember]
        public string PasswordAgain { get; set; }
        [DataMember]
        public int AccessFailedCount { get; set; }
        [DataMember]
        public string Email { get; set; }
        [DataMember]
        public bool EmailConfirmed { get; set; }
        [DataMember]
        public bool LockoutEnabled { get; set; }
        [DataMember]

        public DateTime? LockoutEndDateUtc { get; set; }
        [IgnoreDataMember]
        public string PasswordHash { get; set; }
        [DataMember]
        public string PhoneNumber { get; set; }
        [DataMember]
        public bool PhoneNumberConfirmed { get; set; }
        [DataMember]
        public string SecurityStamp { get; set; }
        [DataMember]
        public bool TwoFactorEnabled { get; set; }
        [DataMember]
        public string UserName { get; set; }
        [DataMember]
        public bool IsAdmin { get; set; }
        [DataMember]
        public bool IsCustomizedAccess { get; set; }

    }

    public class ApplicationRoleDto
    {
        public string Id { get; set; }
        public string Name { get; set; }


    }

}