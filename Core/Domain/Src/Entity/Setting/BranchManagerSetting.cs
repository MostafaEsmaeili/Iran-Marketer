using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.DTO;

namespace IranMarketer.Domain.Entity
{
    public class BranchManagerSetting : AbstractSetting
    {

        [Description("مدیر ثبت")]
        public SimpleParty BranchManager { get; set; }

        public bool ConsiderTaxAndToll { get; set; }

    }
}
