using Pikad.Framework.UnitOfWork;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    [Table("AttachmentCategory", Schema = "shd")]
    public class AttachmentCategory
    {
        public int CodeId { get; set; }
        public string ExternalCode { get; set; }
        public string CaptionEN { get; set; }
        public string CaptionFA { get; set; }
    }
}
