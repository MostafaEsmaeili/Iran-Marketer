namespace IranMarketer.App.Component.Model
{
    public class UploadInitialFile
    {
        public string Name { get; set; }
        public long Size { get; set; }
        public string Extension { get; set; }

        public UploadInitialFile(string name, long size, string extension)
        {
            this.Name = name;
            this.Size = size;
            this.Extension = extension;
        }
    }
}