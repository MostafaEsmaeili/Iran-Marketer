using IranMarketer.Domain.DTO;

namespace IranMarketer.Domain.Filters
{
    public class AddBankDepositFilter : ReportFilter
    {
        public BankDeposit BankDeposit { get; set; }
    }
}