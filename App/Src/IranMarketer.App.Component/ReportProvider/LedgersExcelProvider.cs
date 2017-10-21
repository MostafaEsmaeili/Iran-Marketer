using System;
using System.Drawing;
using System.IO;
using OfficeOpenXml;
using OfficeOpenXml.Style;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.App.Component.ReportProvider
{
    public class LedgersExcelProvider
    {
        //private CustomLogger Logger => new CustomLogger(GetType().FullName);
        private string _contentType;
        private string _base64;
        private string _title;
        private string _date;
        private int _numberOfColumns;
        private int _numberOfRows;
        private ExcelPackage Package;


        public LedgersExcelProvider(string contentType, string base64, string title)
        {
            _contentType = contentType;
            _base64 = base64;
            _title = title;
         //  _date = date;
        }


        public  void CommonStyle()
        {
            try
            {
                var fileContents = Convert.FromBase64String(_base64);
                MemoryStream s = new MemoryStream(fileContents);
                Package = new ExcelPackage();
                Package.Load(s);
                var ws = Package.Workbook.Worksheets[1];
                _numberOfColumns = ws.Dimension.Columns;
                _numberOfRows = ws.Dimension.Rows;

                ws.View.RightToLeft = true;

                ws.Cells.Style.Font.Name = IsFontInstalled("IRANSans(FaNum)") ? "IRANSans(FaNum)" : "Tahoma";
                ws.Cells.Style.Font.Size = 10;

                ws.InsertRow(1, 1);
                //   ws.InsertRow(2, 1);
                //  ws.Dr
                _numberOfRows = _numberOfRows + 1;

                ws.Cells.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;

                ws.Cells[1, 1, 1, _numberOfColumns].Merge = true;
                ws.Cells[1, 1, 1, _numberOfColumns].Value = _title;

                ws.Cells.Style.Numberformat.Format = "###,#.00_);###,#.00";
                ws.Cells.Style.Font.Bold = false;
                ws.Row(1).Style.Font.Size = 15;
                ws.Row(1).Style.Font.Name = "IRANSans(FaNum)";
                ws.Row(2).Style.VerticalAlignment = ExcelVerticalAlignment.Center;
                ws.Row(2).Style.HorizontalAlignment = ExcelHorizontalAlignment.Right;
                ws.Row(2).Style.Font.Size = 13;
                ws.Row(2).Style.Font.Bold = false;

                ws.Cells[1, 1, 1, _numberOfColumns].Style.Fill.PatternType = ExcelFillStyle.Solid;
                ws.Cells[1, 1, 1, _numberOfColumns].Style.Fill.BackgroundColor.SetColor(Color.FromArgb(0, 170, 168));


                ws.Cells.Style.Border.Left.Style = ExcelBorderStyle.Thin;
                ws.Cells.Style.Border.Right.Style = ExcelBorderStyle.Thin;
                ws.Cells.Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
                ws.Cells.Style.Border.Top.Style = ExcelBorderStyle.Thin;

                ws.Cells.Style.Border.Left.Color.SetColor(Color.Gainsboro);
                ws.Cells.Style.Border.Right.Color.SetColor(Color.Gainsboro);
                ws.Cells.Style.Border.Top.Color.SetColor(Color.Gainsboro);
                ws.Cells.Style.Border.Bottom.Color.SetColor(Color.Gainsboro);
                RemoveZero(ws);
                for (int i = 4; i <= _numberOfRows; i++)
                {

                    if (i % 2 == 0)
                    {
                        ws.Cells[i, 1, i, _numberOfColumns].Style.Fill.PatternType = ExcelFillStyle.Solid;
                        ws.Cells[i, 1, i, _numberOfColumns].Style.Fill.BackgroundColor.SetColor(Color.FromArgb(235, 249, 249));
                    }
                    else
                    {
                        ws.Cells[i, 1, i, _numberOfColumns].Style.Fill.PatternType = ExcelFillStyle.Solid;
                        ws.Cells[i, 1, i, _numberOfColumns].Style.Fill.BackgroundColor.SetColor(Color.White);
                    }
                }


                //    ws.Cells[4, 4, _numberOfRows, _numberOfColumns - 1].AutoFitColumns(10);
                //    ws.Column(1).Width = 2;
                ws.View.UnFreezePanes();

            }
            catch (Exception ex)
            {
                //Logger.ErrorException(ex.Message,ex);
                throw ex;
            }



        }
        private void RemoveZero(ExcelWorksheet ws)
        {
            try
            {
                foreach (var cell in ws.Cells)
                {
                    double cellValue;
                    if (double.TryParse(cell.Value.SafeString(), out cellValue))
                    {
                        if (Math.Round(cellValue, 2) == 0)
                        {
                            cell.Style.Numberformat.Format = "###,#.0_);###,#.0";
                        }

                    }
                    if ((cellValue - (int)cellValue) == 0)
                    {
                        if(cellValue==0)
                        cell.Style.Numberformat.Format = "0";
                    }
                }
            }
            catch (Exception ex)
            {
                //Logger.ErrorException(ex.Message, ex);
                throw ex;
            }


        }
        
        public virtual byte[] Export()
        {
            CommonStyle();

            return Package.GetAsByteArray();

            }
        public static bool IsFontInstalled(string fontName)
        {
            bool installed = IsFontInstalled(fontName, FontStyle.Regular);
            if (!installed) { installed = IsFontInstalled(fontName, FontStyle.Bold); }
            if (!installed) { installed = IsFontInstalled(fontName, FontStyle.Italic); }

            return installed;
        }

        public static bool IsFontInstalled(string fontName, FontStyle style)
        {
            bool installed = false;
            const float emSize = 8.0f;

            try
            {
                using (var testFont = new Font(fontName, emSize, style))
                {
                    installed = (0 == string.Compare(fontName, testFont.Name, StringComparison.InvariantCultureIgnoreCase));
                }
            }
            catch
            {
            }

            return installed;
        }
    }



}