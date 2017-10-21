using System.Collections.Generic;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.DTO.ServiceAcces;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Filters
{
    public class ServiceAccessAddFilter :ReportFilter
    {
        public List<string> UserNames { get; set; }
        public ApplicationRoleDto ApplicationRole { get; set; }
        public List<PageAllow> PageTypes { get; set; }
    }
}