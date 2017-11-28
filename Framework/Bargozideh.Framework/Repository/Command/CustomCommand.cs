using System.Data;
using Dapper;

namespace Bargozideh.Framework.Repository.Command
{
    public class CustomCommand
    {
        public DynamicParameters Parameters { get; set; }
        public string SqlCommand { get; set; }
        public CommandType CommandType { get; set; }
    }


}
