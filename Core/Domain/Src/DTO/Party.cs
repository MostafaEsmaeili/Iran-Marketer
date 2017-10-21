using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class Party 
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string EnName { get; set; }
        public string FirstName { get; set; }
        public string EnFirstName { get; set; }
        public string LastName { get; set; }
        public string EnLastName { get; set; }
        public string FatherName { get; set; }
        public string EnFatherName { get; set; }
        public string NationalId { get; set; }
        public string IdentityCard { get; set; }
        public int? NationalityPlaceId { get; set; }
        public string NationalityText { get; set; }
        public string IdentitySerialNumber { get; set; }

        public string IssuerName { get; set; }
        public string EcomomicCode { get; set; }
        public string FullName { get; set; }
        public string BirthDateJalali { get; set; }
        public DateTime BirthDate { get; set; }
        public string RegisterDateJalali { get; set; }
        public DateTime RegisterDate { get; set; }
        public string RegisterPlace { get; set; }
        public int? RegisterPlaceId { get; set; }
        public string BirthPlace { get; set; }
        public int? BirthPlaceId { get; set; }
        public int? Gender { get; set; }
        public int OrganizationalType { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
        public DateTime? DeletionDate { get; set; }
        public DateTime? ValidFrom { get; set; }
        public DateTime? ValidUntil { get; set; }
        public DateTime? Modified { get; set; }
        public DateTime? Created { get; set; }
        public int Position { get; set; }
        public int JobTitle { get; set; }
        public string EducationDegreeName { get; set; }
        public string PositionName { get; set; }
        public string JobTitleName { get; set; }
        public int EducationDegree { get; set; }
        public string ModifiedBy { get; set; }
        public string CreatedBy { get; set; }
        public PartyType PartyTypeEnum { get; set; }
        public string PhoneNumber { get; set; }

        public string DetailLedgerCode { get; set; }

        public string IssuePlace { get; set; }
    }
}
