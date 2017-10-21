using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum CashFlowCategory
    {
        [Description("پرداخت به سرمایه گذاران")]
        PaymentstoInvestors = 100,
        [Description("دریافت/پرداخت  تسویه معاملات")]
        ClearingAndSettlementCashFlow = 101,
        [Description("دریافت سود سپرده")]
        BankDepositProfitReceive = 102,
        [Description("دریافت/پرداخت سود اوراق")]
        BondProfitCashFlow = 103,
        [Description("انتقال بین حسابهای بانکی")]
        BankTransfer = 104,
        [Description("پرداخت هزینه ها")]
        CostPayments = 105,
        [Description("واریزی نامشخص و اصلاح آن")]
        UnknownSourcePayments = 106,
        [Description("عمومی")]
        Public = 107,
    }
}
