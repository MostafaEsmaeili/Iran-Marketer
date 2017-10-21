using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.Domain.DTO
{
    public class Contact 
    {
        public long Id { get; set; }
        public long? PartyId { get; set; }
        public string HomePhone { get; set; }
        public string BusinessPhone { get; set; }
        public string Mobile { get; set; }
        public string Fax { get; set; }
        public string HomeAddress { get; set; }
        public string BusinessAddress { get; set; }
        public string PostalCode { get; set; }
        public string WebPage { get; set; }
        public string IMAddress { get; set; }
        public string Email1 { get; set; }
        public string Email2 { get; set; }
        public string Email3 { get; set; }
        public int? RegionId { get; set; }
        public string FullPhoneNumber => BusinessPhone.SafeString() + " - " + HomePhone.SafeString() + " - " + Mobile.SafeString();
        public string RegionTitle { get; set; }
        public DateTime? Created { get; set; }
        public DateTime? Modified { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
    }
}
