namespace IranMarketer.UserManagement
{
    public static class AuthenticationManager
    {
        public static AspAuthenticationProvider AuthenticationProvider { get; set; }

        static AuthenticationManager()
        {
            AuthenticationProvider = new AspAuthenticationProvider();
        }
    }
}
