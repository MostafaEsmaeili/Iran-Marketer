using System.Collections.Generic;
using System.Security.AccessControl;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO.ServiceAcces
{
    public class ServiceRepositoryDto
    {
        public int Id { get; set; }
        public string ServiceName { get; set; }
        public string MethodName { get; set; }
        public string Code { get; set; }
        public string Title { get; set; }
    }

    public class ServiceAccessDto
    {
        public int Id { get; set; }
        public string RoleName { get; set; }
        public string UserName { get; set; }
        public bool? Allow { get; set; }
        public string LastUpdate { get; set; }
        public string ControllerName { get; set; }
        public string MethodNameEn { get; set; }
        public string MethodNameFa { get; set; }
        public string Code { get; set; }
        public string ApplicationTitle { get; set; }



    }

  public  class FlatServiceAccess
    {
        public string UserName { get; set; }
        public string UserId { get; set; }
        public string RoleName { get; set; }
        public string RoleId { get; set; }
        public List<Entity.FlatServiceAccess> PageTypes { get; set; }


             }

    public class PageAllow
    {
        public int PageId { get; set; }
        public bool Allow { get; set; }


    }

}