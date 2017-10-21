using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    public class RequestCalculationProcessSetting : AbstractSetting
    {

        [Description("روز محاسبه صدور")]
        public int DaysForSubscription { get; set; }

        [Description("روز محاسبه ابطال")]
        public int DaysForRedemption { get; set; }
        /// <summary>
        /// روز پنج شنبه کاری؟
        /// </summary>
        [Description("پنج شنبه روزکاری است")]
        public bool IsThursdayWorkingDay { get; set; }
        /// <summary>
        /// روز های تعطیل مثل جمع کاری؟
        /// </summary>
        [Description("جمعه روزکاری است")]
        public bool IsFridayWorkingDay { get; set; }

        [Description("روز بر اساس روز کاری")]
        public bool IsConsiderWorkingDay { get; set; }
    }


}
