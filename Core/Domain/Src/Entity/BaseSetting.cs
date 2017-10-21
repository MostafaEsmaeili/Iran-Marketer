using System;
using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    [Table("Setting", Schema = "inf")]

    public class BaseSetting : IEntity<long>
    {
        public long Id { get; set; }
        public string SettingType { get; set; }
        public  string Value { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }


    }
}