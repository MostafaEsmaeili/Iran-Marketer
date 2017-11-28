namespace IranMarketer.Domain.DTO
{
    public class JobPost : BaseDto<int>
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public int Gender { get; set; }
        public int City { get; set; }
        public int Category { get; set; }
        public int Industry { get; set; }
        public int MinYearExperience { get; set; }
        public int MinAge { get; set; }
        public int MaxAge { get; set; }
    }
}