namespace IranMarketer.Domain.Enum
{
    public enum JobRequestStatus
    {
        [DescriptionFa("نامشخص")]
        UnKnown=0,
        [DescriptionFa("درخواست داده شد")]
        Requested = 1,
        [DescriptionFa("درخواست دیده شد")]
        Seen = 2,
        [DescriptionFa("درخواست قبول شد")]
        Accepted = 3,
        [DescriptionFa("درخواست رد شد")]
        Rejected = 4
    }
}