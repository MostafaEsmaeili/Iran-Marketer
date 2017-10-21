using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.DTO
{
    public class RetailParty : BaseDto<int>
    {

        public string Name { get; set; } // Name (length: 100)


        public string EnName { get; set; } // EnName (length: 100)


        public string FirstName { get; set; } // FirstName (length: 100)


        public string EnFirstName { get; set; } // EnFirstName (length: 100)


        public string LastName { get; set; } // LastName (length: 100)


        public string EnLastName { get; set; } // EnLastName (length: 100)


        public string FatherName { get; set; } // FatherName (length: 100)


        public string EnFatherName { get; set; } // EnFatherName (length: 100)


        public string NationalId { get; set; } // NationalId (length: 50)

        public int? NationalityPlaceId { get; set; } // NationalityPlaceId
        public Region NationalityPlace { get; set; }

        public int? CityId { get; set; } // CityId
        public Region City { get; set; }

        public string FullName { get; set; } // FullName (length: 220)

        public string Address { get; set; } // Address


        public string PhoneNumber { get; set; } // PhoneNumber (length: 50)


        public string MobileNumber { get; set; } // MobileNumber (length: 50)


        public System.DateTime? BirthDate { get; set; } // BirthDate
        public string BirthDateJalali { get; set; } // BirthDate

        public string BirthPlace { get; set; } // BirthPlace (length: 100)

        public Gender Gender { get; set; } // Gender


        public MilitaryService MilitaryServiceStatus { get; set; } // MilitaryServiceStatus


        public MaritalStatus MaritalStatus { get; set; } // MaritalStatus


        public string UserId { get; set; } // UserId (length: 128)


        public string UserName { get; set; } // UserName (length: 100)


        public System.DateTime? ValidFrom { get; set; } // ValidFrom

        public System.DateTime? ValidUntil { get; set; } // ValidUntil

        public Document BirthCertificate { get; set; }
    }
}