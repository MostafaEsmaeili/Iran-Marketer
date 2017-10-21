using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.DTO;

namespace IranMarketer.App.Component.Model
{
  public  class LoginResponseModel
    {
        public AuthenticationResponse AuthenticationResponse { get; set; }
    }

    public class ChangePassword
    {
        public string CurrentPassword { get; set; }
        public string NewPassword { get; set; }
        public string ConfirmPassword { get; set; }
    }
}
