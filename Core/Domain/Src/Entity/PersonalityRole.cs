using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;
using System.ComponentModel.DataAnnotations;

namespace IranMarketer.Domain.Entity
{
    [Table("PersonalityRole", Schema = "pm")]
    public class PersonalityRole
    {
        public int CodeId { get; set; }
        public string ExternalCode { get; set; }
        public string CaptionFA { get; set; }
        public string CaptionEN { get; set; }
    }
}
