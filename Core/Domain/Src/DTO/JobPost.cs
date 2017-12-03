using System.Web.Mvc;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.Domain.DTO
{
    public class JobPost : BaseDto<int>
    {
        public string Title { get; set; }
        [AllowHtml]
        public string Description { get; set; }
        public int? Gender { get; set; }
        public string GenderTitle => Gender.SafeEnum<Gender>().GetEnumDescription();
        public int? City { get; set; }
        public int? Category { get; set; }
        public int? Industry { get; set; }
        public int? MinYearExperience { get; set; }
        public int? MinAge { get; set; }
        public bool Requested { get; set; }
        public int? MaxAge { get; set; }
         public JobCategory JobCategory { get; set; }

        public Region CityRegion { get; set; }

        public Industry IndustryIndustry { get; set; }

         public LegalParty LegalParty { get; set; }

        public System.Collections.Generic.ICollection<JobRequest> JobRequests { get; set; } = new System.Collections.Generic.List<JobRequest>();
    }
}