using System;
using Pikad.Framework.Infra.Utility;
using IranMarketer.App.Component.Helper;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Component.ReportProvider
{
    public class RedemptionReceiptPdfProvider : BasePdfProvider
    {
        public RedemptionReceiptPdfProvider()
        {
            Category = ReportCategory.RedemptionReceipt;

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
            var formattedData = data as RedemptionReceipt;
            if (formattedData != null)
            {

                ReportFile.Dictionary.Variables.Add("FundTitle", formattedData.FundTitle);
                ReportFile.Dictionary.Variables.Add("SeoRegisterNumberTitle", formattedData.SeoRegisterNumber);
                ReportFile.Dictionary.Variables.Add("ReportTitle", Category.GetEnumDescription());
                ReportFile.Dictionary.Variables.Add("ReceiptNumber", formattedData.EvidenceNumber);
                ReportFile.Dictionary.Variables.Add("ReceiptDate", formattedData.Date.ConvertMiladiToJalali(false));
                ReportFile.Dictionary.Variables.Add("CustomerTitle", formattedData.PartyFullName);



                if (formattedData.PartyType == (int) PartyType.Retail)
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


                ReportFile.Dictionary.Variables.Add("RequestNumber", formattedData.RequestId);
                ReportFile.Dictionary.Variables.Add("RedemptionUnit", formattedData.Volume);


                ReportFile.Dictionary.Variables.Add("ReceiptDateTime", formattedData.DataJalali);

                ReportFile.Dictionary.Variables.Add("ManagerName", formattedData.FundBranchManagerTitle);

                ReportFile.Dictionary.Variables.Add("BranchName", formattedData.FundBranchName);
            }

            ReportFile.Compile();
            ReportFile.Render();
        }
    }
}