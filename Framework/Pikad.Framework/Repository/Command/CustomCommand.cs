using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;


namespace Pikad.Framework.Repository.Command
{
    public class CustomCommand
    {
        public DynamicParameters Parameters { get; set; }
        public string SqlCommand { get; set; }
        public CommandType CommandType { get; set; }
    }


}
