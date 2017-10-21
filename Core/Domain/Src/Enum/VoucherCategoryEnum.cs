using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum VoucherCategoryEnum
    {
        [Description("درخواست صدور")]
        SubscriptionRequest = 100,
        [Description("تایید درخواست صدور")]
        ConfirmSubscriptionRequest = 110,
        [Description("پرداخت به سرمایه گذاران")]
        PaymentToInvestors = 120,
        [Description("تایید درخواست ابطال")]
        ConfirmRedemptionRequest = 130,
        [Description("محاسبات روزانه صندوق")]
        DailyCalculation = 140,
        [Description("اعمال سود سهام مصوب")]
        EquityDividendApply = 150,
        [Description("دریافت و پرداخت سود اوراق")]
        BondProfitCashFlow = 160,
        [Description("تسویه معاملات اوراق")]
        BondTradeClearingAndSettlementCashFlow = 170,
        [Description("تسویه معاملات سهام و حق تقدم")]
        EquityProfiBondTradeClearingAndSettlementCashFlow = 180,
        [Description("پرداخت هزینه های ارکان ونگهداری صندوق")]
        BoardMemberCostPayment = 190,
        [Description("پرداخت سایر هزینه های صندوق")]
        OtherFundCostPayment = 200,
        [Description("شناسایی مخارج نرم افزار سالانه")]
        AnnualySoftwareCost = 210,
        [Description("واریزی نامشخص")]
        UnknownPayment = 220,
        [Description("عودت واریزی نامشخص")]
        UnknownPaymentPayBack = 230,
        [Description("عمومی")]
        General = 240,
        [Description("معاملات روزانه")]
        DailyTrade = 250,
        [Description("خرید و فروش اوراق با درآمد ثابت")]
        FixedIncomeTrade = 260,
        [Description("اعمال افزایش سرمایه")]
        CapitalIncreseApply = 270,
        [Description("پرداخت حق تقدم")]
        RightPayment = 280,
        [Description("دریافت و پرداخت عمومی")]
        PublicCashFlow = 290,
        [Description("برگشت درخواست صدور")]
        SubscriptionRequestPayBack = 300,
        [Description("پذیره نویسی")]
        IPORequest = 310,
        [Description("دریافت سود سپرده بانکی")]
        BankDepositProfitReceive = 320,
        [Description("انتقال فی مابی حسابها")]
        TransferBetweenAccounts = 330,
        [Description("انتقال وجه بین بانکی")]
        BankTransfer = 340,
        [Description("بستن حسابهای عملکرد")]
        OperationalAccountsClosing = 350,
        [Description("افتتاحیه")]
        OpeningAccounts = 360,
        [Description("اختتامیه")]
        ClosingAccounts = 370
    }
}
