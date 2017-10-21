using Pikad.Framework.Infra.Utility;
using IranMarketer.App.Component.Helper;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Component.ReportProvider
{
    public class RedemptionStatementPdfProvider : BasePdfProvider
    {
        public RedemptionStatementPdfProvider()
        {
            Category=ReportCategory.RedemptionStatement;
        }
   
        public override void SetVariables<T>(T data)
        {
            ReportFile.Load(GetReportMrtPath());
            var formattedData = data as RedemptionStatement;
            if (formattedData != null)
            {

                ReportFile.Dictionary.Variables.Add("FundTitle", formattedData.FundTitle);
                ReportFile.Dictionary.Variables.Add("SeoRegisterNumberTitle", formattedData.SeoRegisterNumber);
                ReportFile.Dictionary.Variables.Add("ReportTitle", Category.GetEnumDescription());
                ReportFile.Dictionary.Variables.Add("ReuestNumber", formattedData.RequestId);
                ReportFile.Dictionary.Variables.Add("RedemptionDate", formattedData.EmissionDate.ConvertMiladiToJalali(false));



                if (formattedData.PartyType == (int)PartyType.Retail)
                {
                    ReportFile.Dictionary.Variables.Add("RetailpPersonTitle", formattedData.PartyFullName);
                    ReportFile.Dictionary.Variables.Add("IdNumber", formattedData.IdentityCard);
                    ReportFile.Dictionary.Variables.Add("IssuePlace", "");
                    ReportFile.Dictionary.Variables.Add("BirthDate", formattedData.BirthDateJalali);
                    ReportFile.Pages.GetComponentByName("Text6").Enabled = false;


                }
                else
                {
                    ReportFile.Dictionary.Variables.Add("InstitutionalPersonTitle", formattedData.PartyFullName);
                    ReportFile.Dictionary.Variables.Add("RegistrationNumber", formattedData.IdentityCard);
                    ReportFile.Dictionary.Variables.Add("RegisterPlace", "");
                    ReportFile.Dictionary.Variables.Add("RegisterDate", formattedData.RegisterDateJalali);
                    ReportFile.Pages.GetComponentByName("Text5").Enabled = false;

                }
                ReportFile.Dictionary.Variables.Add("NationalId", formattedData.NationalId);


                ReportFile.Dictionary.Variables.Add("EvidenceVolume", formattedData.EvidenceVolume);
                ReportFile.Dictionary.Variables.Add("RemainVolume", formattedData.RemainVolume);


                ReportFile.Dictionary.Variables.Add("Price", formattedData.Price);

                ReportFile.Dictionary.Variables.Add("TotalAmount", formattedData.TotalAmount);

                ReportFile.Dictionary.Variables.Add("NetAmount", formattedData.NetAmount);

                ReportFile.Dictionary.Variables.Add("FixedFee", formattedData.FixedFee);
                ReportFile.Dictionary.Variables.Add("VariableFee", formattedData.VariableFee);


                ReportFile.Dictionary.Variables.Add("EmissionDate", formattedData.EmissionDate.ConvertMiladiToJalali(false));
                ReportFile.Dictionary.Variables.Add("AccountNumber", formattedData.CustomerAccountNumber);
                ReportFile.Dictionary.Variables.Add("AccountBrankBranch", formattedData.CustomerAccountBranchName??"");
                ReportFile.Dictionary.Variables.Add("BankName", formattedData.BankName??"");

            }

            ReportFile.Compile();
            ReportFile.Render();
        }
    }
}