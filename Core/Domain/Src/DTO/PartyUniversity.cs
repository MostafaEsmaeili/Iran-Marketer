using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using IranMarketer.Domain.Entity;

namespace IranMarketer.Domain.DTO
{
    public class PartyUniversity :BaseDto<int>
    {
        public int? DegreeLevel { get; set; }
        public int? AcademicFieldId { get; set; }
        public string University { get; set; }
        public int? CountryId { get; set; }
        public int? UniversityCityId { get; set; }
        public string UniversityFromDate { get; set; }
        public string UniversityToDate { get; set; }
        public decimal? Average { get; set; }
        public virtual AcademicField AcademicField { get; set; }
        public virtual Region City { get; set; }
        public virtual Region Country { get; set; }
        public virtual RetailParty RetailParty { get; set; }
    }
}