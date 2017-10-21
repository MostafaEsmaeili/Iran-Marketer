using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.DTO;

namespace IranMarketer.Domain.Entity
{
    public class InvestmentManagerSetting : AbstractSetting
    {
        [Description("مدیر  سرمایه گذاری حقوقی")]
        public List<SimpleParty> LegalInvestmentManagers { get; set; }

        [Description("مدیر  سرمایه گذاری حقیقی")]
        public List<SimpleParty> NaturalInvestmentManagers { get; set; }

        [Description("حداقل تعداد واحد مدیران سرمایه گذاری")]
        public int MinManagerUnit { get; set; }
        [Description("حداکثر تعداد واحد مدیران سرمایه گذاری")]
        public int MaxManagerUnit { get; set; }
    }
}
