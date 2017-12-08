using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using IranMarketer.Domain.Enum;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.DTO
{
    public class JobRequest : BaseDto<int>
    {

        
        public int? JobPostId { get; set; }

      
        public System.DateTime? DateOfRequest { get; set; }
        public string ShamsiDate => DateOfRequest?.ConvertMiladiToJalali();
       
        public bool? IsRequested { get; set; }

      
        public int RequestStatus { get; set; }

        public string RequestStatusTitle => ((JobRequestStatus) RequestStatus).GetEnumDescriptionFa();
        public Entity.JobPost JobPost { get; set; }

         public Entity.RetailParty RetailParty { get; set; }
    }
}