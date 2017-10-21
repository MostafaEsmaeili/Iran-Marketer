using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    /// <summary>
    /// نوع واریزی
    /// DepositType 
    /// </summary>
    public enum RequestSettlementType
    {
        [Description("واریز")]
        BankDeposit = 1,
        [Description("از محل تقسیم سود")]
        DividendAccount = 2,
        //[Description("از محل مانده حساب واریزی")]
        //RemainAccount = 3
    }
}
