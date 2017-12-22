using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.Entity
{
    public class PartyProject : Entity<int>
    {
        public string ProjectTitle { get; set; }
        public string ProjectDescription { get; set; }
        public int? PartyId { get; set; }
        public DateTime? FromDate { get; set; }
        public DateTime?  Todate { get; set; }


    }
}