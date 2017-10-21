
using TadbirPardaz.AM.Domain;

namespace Sahra.MutualFund.UserManagement
{
    public interface IAuthenticationProvider
    {
        UserLoginResponse Authenticate(UserLoginRequest request);

    }
}
