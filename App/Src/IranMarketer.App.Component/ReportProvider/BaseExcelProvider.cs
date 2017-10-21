using System;
using System.Drawing;
using System.IO;
using OfficeOpenXml;
using OfficeOpenXml.Style;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.App.Component.ReportProvider
{
    public class BaseExcelProvider
    {
        //private CustomLogger Logger => new CustomLogger(GetType().FullName);
        private string _contentType;
        private string _base64;
        private string _title;
        private string _date;
        private int _numberOfColumns;
        private int _numberOfRows;
        private ExcelPackage Package;


        public BaseExcelProvider(string contentType, string base64, string title)
        {
            _contentType = contentType;
            _base64 = base64;
            _title = title;
            //  _date = date;
        }


        public void CommonStyle()
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

                ws.Cells.Style.Numberformat.Format = "#,###.00_);[Red](#,###.00)";
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
                            cell.Style.Numberformat.Format = "#,###_);[Red](#,###)";
                        }

                    }
                    if ((cellValue - (int)cellValue) == 0)
                    {
                        cell.Style.Numberformat.Format = "#,###_);[Red](#,###)";
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



    public class ExcelHelper
    {
        //The correct method to convert width to pixel is:
        //Pixel =Truncate(((256 * {width} + Truncate(128/{Maximum DigitWidth}))/256)*{Maximum Digit Width})

        //The correct method to convert pixel to width is:
        //1. use the formula =Truncate(({pixels}-5)/{Maximum Digit Width} * 100+0.5)/100 
        //    to convert pixel to character number.
        //2. use the formula width = Truncate([{Number of Characters} * {Maximum Digit Width} + {5 pixel padding}]/{Maximum Digit Width}*256)/256 
        //    to convert the character number to width.

        public const int MTU_PER_PIXEL = 9525;

        public static int ColumnWidth2Pixel(ExcelWorksheet ws, double excelColumnWidth)
        {
            //The correct method to convert width to pixel is:
            //Pixel =Truncate(((256 * {width} + Truncate(128/{Maximum DigitWidth}))/256)*{Maximum Digit Width})

            //get the maximum digit width
            decimal mdw = ws.Workbook.MaxFontWidth;

            //convert width to pixel
            decimal pixels = decimal.Truncate(((256 * (decimal)excelColumnWidth + decimal.Truncate(128 / (decimal)mdw)) / 256) * mdw);
            //double columnWidthInTwips = (double)(pixels * (1440f / 96f));

            return Convert.ToInt32(pixels);

        }

        public static double Pixel2ColumnWidth(ExcelWorksheet ws, int pixels)
        {
            //The correct method to convert pixel to width is:
            //1. use the formula =Truncate(({pixels}-5)/{Maximum Digit Width} * 100+0.5)/100 
            //    to convert pixel to character number.
            //2. use the formula width = Truncate([{Number of Characters} * {Maximum Digit Width} + {5 pixel padding}]/{Maximum Digit Width}*256)/256 
            //    to convert the character number to width.

            //get the maximum digit width
            decimal mdw = ws.Workbook.MaxFontWidth;

            //convert pixel to character number
            decimal numChars = decimal.Truncate(decimal.Add((decimal)(pixels - 5) / mdw * 100, (decimal)0.5)) / 100;
            //convert the character number to width
            decimal excelColumnWidth = decimal.Truncate((decimal.Add(numChars * mdw, (decimal)5)) / mdw * 256) / 256;

            return Convert.ToDouble(excelColumnWidth);
        }

        public static int RowHeight2Pixel(double excelRowHeight)
        {
            //convert height to pixel
            decimal pixels = decimal.Truncate((decimal)(excelRowHeight / 0.75));

            return Convert.ToInt32(pixels);
        }

        public static double Pixel2RowHeight(int pixels)
        {
            //convert height to pixel
            double excelRowHeight = pixels * (double)0.75;

            return excelRowHeight;
        }

        public static int MTU2Pixel(int mtus)
        {
            //convert MTU to pixel
            decimal pixels = decimal.Truncate((decimal)(mtus / MTU_PER_PIXEL));

            return Convert.ToInt32(pixels);
        }

        public static int Pixel2MTU(int pixels)
        {
            //convert pixel to MTU
            int mtus = pixels * MTU_PER_PIXEL;

            return mtus;
        }
    }

}