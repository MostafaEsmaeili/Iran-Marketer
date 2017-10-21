using System;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.Domain.Entity
{
    public abstract class AbstractSetting
    {
        public string Guid { get; set; }

        protected AbstractSetting()
        {
            Guid = System.Guid.NewGuid().ToString();

        }

        public DateTime ValidFrom { get; set; }
        public string ValidFromJalali => ValidFrom>new DateTime(1900,1,1) ?ValidFrom.ConvertMiladiToJalali(true):null;

    }
}