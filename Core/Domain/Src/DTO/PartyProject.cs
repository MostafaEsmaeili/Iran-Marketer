using System;

namespace IranMarketer.Domain.DTO
{
    public class PartyProject : BaseDto<int>
    {
        public string ProjectTitle { get; set; }
        public string ProjectDescription { get; set; }
        public DateTime? FromDate { get; set; }
        public DateTime? Todate { get; set; }

        public string FromDateJalali { get; set; }
        public string ToDateJalali { get; set; }

    }
}