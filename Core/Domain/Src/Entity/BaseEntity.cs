using System;

namespace IranMarketer.Domain.Entity
{
    public class BaseEntity
    {
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
    }
}