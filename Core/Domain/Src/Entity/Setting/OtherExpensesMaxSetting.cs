using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
   public class OtherExpensesMaxSetting : AbstractSetting
    {
   
        [Description("سقف هزینه تاسیس")]
        public decimal MaxofEstablishmentCost { get; set; }
        [Description("سقف هزینه مجامع")]
        public decimal MaxofGAMCost { get; set; }

        [Description("سقف هزینه عضویت در کانون")]
        public decimal MaxofClubMembershipCost { get; set; }

        [Description("نرخ تنزیل سود سهام")]
        public decimal EquityProfitDiscountRate { get; set; }


    }
}
