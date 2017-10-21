using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum ChequeType
    {
        [Description("ایران چک")]
        IranCheque = 1,
        [Description("چک رمز دار")]
        CashCheque = 2,
        [Description("چک بانکی")]
        BankCheque = 3,
        [Description("چک عادی")]
        CasualCheque = 4,
        [Description("چک مسافرتی")]
        TripCheque = 5
    }
}
