using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using Pikad.Framework.Infra.Logging;
using IranMarketer.App.Component.Helper;
using Stimulsoft.Report;
using Stimulsoft.Report.Export;

namespace IranMarketer.App.Component.ReportProvider
{
    public abstract class BasePdfProvider
    {
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        public StiReport ReportFile = new StiReport();
        public ReportCategory Category { get; set; }

        protected virtual string GetReportMrtPath()
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

        public abstract void SetVariables<T>(T data);

        public virtual byte[] GenerateReport()
        {
            try
            {

                var stream = new MemoryStream();
                ReportFile.ExportDocument(StiExportFormat.Pdf, stream,

                    new StiPdfExportSettings
                    {
                        AllowEditable = StiPdfAllowEditable.No,
                        EmbeddedFonts = true,
                        StandardPdfFonts = true,
                        UseUnicode = true,
                        //   PdfACompliance = true,
                        ExportRtfTextAsImage = true,
                        ImageResolution = 400,
                        ImageQuality = 1000,
                        UserAccessPrivileges = StiUserAccessPrivileges.PrintDocument
                    });

                return stream.ToArray();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

    }
}