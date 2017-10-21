using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum ManagementFee
    {
        [Description("درصد از سهام و حق تقدم")]
        PercentageFromEquity = 1,
        [Description("درصد از اوراق با درآمد ثابت")]
        PercentageFromBond = 2,
        [Description("درصد از اوراق گواهی سپرده")]
        PercentageFromCoupon = 3,
        [Description("درصد از تفاوت سود بانکی")]
        DiffPercentFromBankDeposit = 4,
        [Description("درصد از خالص ارزش دارایی ها")]
        PercentageFromNetAssetValue = 5,
        [Description("نرخ ثابت سالیانه")]
        YearlyFixedRate = 6
    }

    public enum LiquidityGuaranteeFee
    {

        [Description("درصد دارایی های از سهام)")] LiquidityGuarantorFeeFactorOnEquity = 1,

        [Description("درصد داراییها بدون سهم و حق تقدم)")] LiquidityGuarantorFeeFactorOnOtherAssetWitoutEquity =2,

        [Description(" درصد ازاراییهای اوراق با درآمد ثابت و سپرده بانکی بدون سهم و حق تقدم ")]
        LiquidityGuarantorFeeFactorFixedIncomeAndbankDepositOnly =3,

        [Description(" درصد از ارزش روزانه ی اوراق بهادار بادرآمد ثابت")] LiquidityGuarantorFeeFactorOnFixedIncome =4


    }
}