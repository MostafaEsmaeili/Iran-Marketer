using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum RequestVolumeProcessResult
    {
        [Description("سفارش قابل قبول است")]
        Acceptable = 1,
        [Description("کمتر از حداقل سفارش هر فرد است")]
        LessThanMin = 2,
        [Description("بیشتر از حداکثر سفارش هر فرد است")]
        MoreThanMax = 3,
        [Description("بیشتر از حداکثر سفارش هر موسس است")]
        MoreThanBoardMemberMax = 5,
        [Description("ظرفيت صندوق کامل است")]
        MoreThanTotalUnits = 4,//.        
        

    }
}
