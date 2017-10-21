using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Dapper.FastCrud;
using IranMarketer.Domain.Filters;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.Domain.DTO
{
    public class BaseDto<TPk> where TPk : IComparable
    {
        public TPk Id { get; set; }
        public DateFilter DateFilter { get; set; }
        public OptionalFilter OptionalFilter { get; set; }
        public string UserName { get; set; }
        public string UserId { get; set; }
        public string PartyName { get; set; }
        public int PartyId { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }

        public string CreatedJalali => Created > new DateTime(1907, 1, 1)
            ? Created.ConvertMiladiToJalali()
            : null;
        public string ModifiedJalali => Modified > new DateTime(1907, 1, 1)
            ? Modified.ConvertMiladiToJalali()
            : null;
    }
}