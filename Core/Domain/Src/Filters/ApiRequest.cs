using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;

namespace IranMarketer.Domain.Filters
{
    public class ApiRequest<T>
    {
        public T Entity { get; set; }
        public string AuthenticatedUserName { get; set; } = "Test";
        public int BranchId { get; set; } = 4;
        public string BranchCode { get; set; } = "1000";
        public string PartyName { get; set; } = "test";
        public string BranchName { get; set; } = "شعبه مرکزی";
        public long PartyId { get; set; } = 250;

        public string RoleName { get; set; }
        public string RoleId { get; set; }
    }
}