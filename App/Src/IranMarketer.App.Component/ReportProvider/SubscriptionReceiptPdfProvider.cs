using System;
using IranMarketer.App.Component.Helper;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Component.ReportProvider
{
    public class SubscriptionReceiptPdfProvider : BasePdfProvider
    {
        public SubscriptionReceiptPdfProvider()
        {
            Category=ReportCategory.SubscriptionReceipt;
        }
        protected override string GetReportMrtPath()
        {
            try
            {
                return ReportPathHelper.GetMrtPath(Category);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public override void SetVariables<T>(T data)
        {
            ReportFile.Load(GetReportMrtPath());
            var formattedData = data as SubscriptionReceipt;
            if (formattedData != null)
            {


                ReportFile.Dictionary.Variables.Add("FundTitle", formattedData.FundTitle);
                ReportFile.Dictionary.Variables.Add("SeoRegisterNumberTitle", formattedData.SeoRegisterNumber);
                ReportFile.Dictionary.Variables.Add("ReportTitle", Category.GetEnumDescription());
                ReportFile.Dictionary.Variables.Add("Amount", formattedData.Amount);
                ReportFile.Dictionary.Variables.Add("FishNumber", formattedData.DepositTranckigNumber);
                ReportFile.Dictionary.Variables.Add("ReuestNumber", formattedData.RequestId);
                ReportFile.Dictionary.Variables.Add("ReuestNumber", formattedData.RequestId);
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

                ReportFile.Dictionary.Variables.Add("Address", formattedData.HomeAddress??formattedData.BusinessAddress);

                ReportFile.Dictionary.Variables.Add("Phone", formattedData.BusinessPhone??formattedData.HomePhone);

                ReportFile.Dictionary.Variables.Add("Mobile", formattedData.Mobile);

                ReportFile.Dictionary.Variables.Add("Email", formattedData.Email1);

                ReportFile.Dictionary.Variables.Add("PostalCode", formattedData.PostalCode);

                ReportFile.Dictionary.Variables.Add("AccountNumber", formattedData.CustomerAccountNumber);
                ReportFile.Dictionary.Variables.Add("FundAccountNumber", formattedData.AccountNumber);


                ReportFile.Dictionary.Variables.Add("AccountBrankBranch", formattedData.CustomerAccountBranchName??"");

                ReportFile.Dictionary.Variables.Add("BankName", formattedData.BankName);

                ReportFile.Dictionary.Variables.Add("AccountType", formattedData.CustomerAccountType > 0 ? ((BankAccountType)formattedData.CustomerAccountType).GetEnumDescription() : "");

                ReportFile.Dictionary.Variables.Add("SubscribtionDate", formattedData.DataJalali);

                ReportFile.Dictionary.Variables.Add("Manager", formattedData.FundBranchManagerTitle);

                ReportFile.Dictionary.Variables.Add("BranchName", formattedData.FundBranchName);

            }

            ReportFile.Compile();
            ReportFile.Render();
        }
    }
}