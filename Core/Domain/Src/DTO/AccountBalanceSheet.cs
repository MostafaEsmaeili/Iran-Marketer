using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Common.Utility;
using Pikad.Framework.Infra.Utility;


namespace IranMarketer.Domain.DTO
{
    public class AccountBalanceSheet
    {
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public int FiscalYearId { get; set; }
        public decimal DebitSum { get; set; }
        public decimal CreditSum { get; set; }
        public decimal DebitLeave { get; set; }
        public decimal CreditLeave { get; set; }
        public string AccountCode { get; set; }
        public string AccountTitle { get; set; }
        public long AccountId { get; set; }
        public int Level { get; set; }

        public string FromDateJalali => FromDate > IranMarketerCustomUtility.MinDate
            ? FromDate.ConvertMiladiToJalali()
            : "";
        public string ToDateJalali => ToDate > IranMarketerCustomUtility.MinDate
            ? ToDate.ConvertMiladiToJalali()
            : "";

        public int BranchId { get; set; }

    }
}
