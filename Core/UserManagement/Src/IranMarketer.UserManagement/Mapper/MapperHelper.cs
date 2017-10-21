



using IranMarketer.Domain.DTO;

namespace IranMarketer.UserManagement
{
    public class MapperHelper
    {
        public static IdentityModels.ApplicationUser ApplicationUserMapper(ApplicationUserDTO applicationUserDto)
        {
            var applicationUser = new IdentityModels.ApplicationUser
            {
                CreateDate = applicationUserDto.CreateDate,
                AccessFailedCount = applicationUserDto.AccessFailedCount,
                DisplayName = applicationUserDto.DisplayName,
                Email = applicationUserDto.Email,
                EmailConfirmed = applicationUserDto.EmailConfirmed,
                Status = applicationUserDto.Status,
                LockoutEnabled = applicationUserDto.LockoutEnabled,
                LockoutEndDateUtc = applicationUserDto.LockoutEndDateUtc,
                PasswordHash = applicationUserDto.PasswordHash,
                PhoneNumber = applicationUserDto.PhoneNumber,
                PhoneNumberConfirmed = applicationUserDto.PhoneNumberConfirmed,
                SecurityStamp = applicationUserDto.SecurityStamp,
                TwoFactorEnabled = applicationUserDto.TwoFactorEnabled,
                UserName = applicationUserDto.UserName,
                IsAdmin = applicationUserDto.IsAdmin,
                IsCustomizedAccess = applicationUserDto.IsCustomizedAccess,
               
            };
            return applicationUser;
        }

        public static ApplicationUserDTO ApplicationUserDTOMapper(IdentityModels.ApplicationUser applicationUser)
        {
            var applicationUserDto = new ApplicationUserDTO
            {
                UserId = applicationUser.Id,
                CreateDate = applicationUser.CreateDate,
                AccessFailedCount = applicationUser.AccessFailedCount,
                DisplayName = applicationUser.DisplayName,
                Email = applicationUser.Email,
                EmailConfirmed = applicationUser.EmailConfirmed,
                Status = applicationUser.Status,
                LockoutEnabled = applicationUser.LockoutEnabled,
                LockoutEndDateUtc = applicationUser.LockoutEndDateUtc,
                PasswordHash = applicationUser.PasswordHash,
                PhoneNumber = applicationUser.PhoneNumber,
                PhoneNumberConfirmed = applicationUser.PhoneNumberConfirmed,
                SecurityStamp = applicationUser.SecurityStamp,
                TwoFactorEnabled = applicationUser.TwoFactorEnabled,
                UserName = applicationUser.UserName,
                IsAdmin = applicationUser.IsAdmin,
                IsCustomizedAccess = applicationUser.IsCustomizedAccess,
               
            };
            return applicationUserDto;
        }

    }
}
