using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.Domain.Entity
{
   public class FlatServiceAccess
    {

        public string RoleId { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string RoleName { get; set; }
        public int PageType { get; set; }
        public PageType PageTypeEnum => (PageType) PageType;
        public string PageTypeTitle => PageTypeEnum.GetDescription();

        public int ServiceRepositoryId { get; set; }
        public bool Allow { get; set; }


    }
}
