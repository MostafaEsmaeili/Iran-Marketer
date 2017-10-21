using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum CloseNAVStatus
    {
        [Description("درخواست بستن")]
        RequestForClose = 1,
        [Description("بسته شده")]
        Closed = 2,
        [Description("حذف")]
        Deleted = 3
    }
}
