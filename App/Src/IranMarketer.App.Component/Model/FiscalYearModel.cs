using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.App.Component.Model
{
    public class FiscalYearModel
    {
        public int Id { get; set; } // Id (Primary key)
        public DateTime StartDate { get; set; } // StartDate
        public DateTime EndDate { get; set; } // EndDate

        public string StartDateJalali => StartDate.ConvertMiladiToJalali();
        public string EndDateJalali => EndDate.ConvertMiladiToJalali();
        public string Title { get; set; } // Title
        public string Code { get; set; } // Code
        public int? Status { get; set; } // Status

    }
}
