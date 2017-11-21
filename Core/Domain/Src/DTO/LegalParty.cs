namespace IranMarketer.Domain.DTO
{
    public class LegalParty : BaseDto<int>
    {

        public string CompanyName { get; set; } // CompanyName (length: 500)

        public string WebSite { get; set; } // WebSite (length: 500)


        public string Phone { get; set; } // Phone (length: 50)


        public int? IndustryId { get; set; } // IndustryId


        public int? LegalPartyCityId { get; set; } // LegalPartyCityId


        public string Address { get; set; } // Address

        public string About { get; set; } // About


        public int? BrandSize { get; set; } // BrandSize

        public int? CompanyOwnershipType { get; set; } // CompanyOwnershipType


        public System.DateTime? EstablishmentYear { get; set; } // EstablishmentYear


        public string UserId { get; set; }
        public string UserName { get; set; }
    }
}