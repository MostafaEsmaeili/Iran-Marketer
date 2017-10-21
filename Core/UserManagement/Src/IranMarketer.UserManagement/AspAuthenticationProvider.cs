using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using Castle.Core.Internal;
using IranMarketer.Domain;
using IranMarketer.Domain.DTO;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security.DataProtection;
using Pikad.Framework.Infra.Utility;


namespace IranMarketer.UserManagement
{
    public class AspAuthenticationProvider 
    {
        public static IDataProtectionProvider DataProtectionProvider { get; set; }

        public AspAuthenticationProvider()
        {
            var userManager = ApplicationUserManager.Create(new IdentityFactoryOptions<ApplicationUserManager>(),
                new OwinContext());
            var roleManager = ApplicationRoleManager.Create(new IdentityFactoryOptions<ApplicationRoleManager>(),
                new OwinContext());
            UserManager = userManager;
            RoleManager = roleManager;
        }

        public RoleManager<IdentityModels.ApplicationRole> RoleManager { get; private set; }
        public UserManager<IdentityModels.ApplicationUser> UserManager { get; private set; }

        public void CreateRole(string roleName)
        {
            try
            {
                RoleManager.Create(new IdentityModels.ApplicationRole
                {
                    Name = roleName
                });
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public ApplicationUserResponse CreateUser(ApplicationUserRequest user)
        {
            var response = new ApplicationUserResponse();
            try
            {
                if (!UserCreationValidation(user, response))
                {
                    return response;
                }
                var userApp = MapperHelper.ApplicationUserMapper(user.ApplicationUser);
                var res = UserManager.Create(userApp, user.ApplicationUser.Password);
                if (res.Errors.Count() > 0)
                {
                    response.ResponseStatus = new ResponseStatus()
                    {
                        StatusCode = (int)HttpStatusCode.BadRequest,
                        HttpStatus = HttpStatusCode.BadRequest.ToString(),
                        Message = MessageDescription.CreateUserFailed.GetDescription(),
                        Errors = new List<ResponseError>
                        {
                            new ResponseError
                            {
                                Message = res.Errors.FirstOrDefault()
                            }
                        }
                    };
                }
                else
                {
                    if (!user.ApplicationUser.RoleId.IsNullOrEmpty())
                    {
                        //TODO:
                        var r = RoleManager.FindById(user.ApplicationUser.RoleId);
                        if (r == null)
                        {
                            response.ResponseStatus = new ResponseStatus()
                            {
                                StatusCode = (int)HttpStatusCode.BadRequest,
                                HttpStatus = HttpStatusCode.BadRequest.ToString(),
                                Message = MessageDescription.RoleNotFound.GetDescription(),
                                Errors = new List<ResponseError>()
                                {
                                    new ResponseError()
                                    {
                                        Message = MessageDescription.RoleNotFound.GetDescription()
                                    }
                                }
                            };
                            UserManager.Delete(userApp);
                        }
                        else
                        {
                            UserManager.AddToRole(userApp.Id, r.Name);
                            response.UserId = userApp.Id;
                            response.ResponseStatus = new ResponseStatus
                            {
                                StatusCode = (int)HttpStatusCode.OK,
                                HttpStatus = HttpStatusCode.OK.ToString(),
                                Message = MessageDescription.RoleNotFound.GetDescription()
                            };
                        }
                    }
                }
                return response;
            }
            catch (Exception ex)
            {
                response.ResponseStatus = new ResponseStatus
                {
                    StatusCode = (int)HttpStatusCode.ExpectationFailed,
                    HttpStatus = HttpStatusCode.ExpectationFailed.ToString(),
                    Message = MessageDescription.TransactionFailed.GetDescription()
                };
                return response;
            }
        }

        private static bool UserCreationValidation(ApplicationUserRequest user, ApplicationUserResponse response)
        {
            var isOk = true;
            if (user == null)
            {
                isOk = false;
                response.ResponseStatus = new ResponseStatus()
                {
                    StatusCode = (int)HttpStatusCode.BadRequest,
                    HttpStatus = HttpStatusCode.BadRequest.ToString(),
                    Message = MessageDescription.ApplicationUserRequestIsNull.GetDescription(),
                };
            }
            else if (user.ApplicationUser == null)
            {
                isOk = false;
                response.ResponseStatus = new ResponseStatus()
                {
                    StatusCode = (int)HttpStatusCode.BadRequest,
                    HttpStatus = HttpStatusCode.BadRequest.ToString(),
                    Message = MessageDescription.ApplicationUserDTOIsNull.GetDescription(),
                };
            }
            //else if (user.ApplicationUser.RoleId .IsNullOrEmpty())
            //{
            //    isOk = false;
            //    response.ResponseStatus = new ResponseStatus()
            //    {
            //        StatusCode = (int)HttpStatusCode.BadRequest,
            //        HttpStatus = HttpStatusCode.BadRequest.ToString(),
            //        Message = MessageDescription.ApplicationUserRequestIsNull.GetDescription(),
            //    };
            //}
            return isOk;
        }

        public UserResponse GetUserById(UserRequest request)
        {
            var response = new UserResponse();
            try
            {
                var user = UserManager.FindById(request.UserId);
                response.ApplicationUserDto = MapperHelper.ApplicationUserDTOMapper(user);
               
                response.ResponseStatus = new ResponseStatus
                {
                    StatusCode = (int)HttpStatusCode.OK,
                    HttpStatus = HttpStatusCode.OK.ToString()
                };
                return response;
            }
            catch (Exception ex)
            {
                response.ResponseStatus = new ResponseStatus
                {
                    StatusCode = (int)HttpStatusCode.ExpectationFailed,
                    HttpStatus = HttpStatusCode.ExpectationFailed.ToString(),
                    Message = MessageDescription.TransactionFailed.GetDescription()
                };
                return response;
            }
        }

        public IdentityModels.ApplicationUser GetUserById(string userId)
        {
            try
            {
                var user = UserManager.FindById(userId);
                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public IdentityModels.ApplicationUser GetUserByName(string userName)
        {
            try
            {
                var user = UserManager.FindByName(userName);
                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<IdentityModels.ApplicationRole> GetUserRolesById(string userId)
        {
            try
            {
                var role = UserManager.GetRoles(userId);
                return role.Select(x => RoleManager.FindByName(x)).ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public ChangePasswordResponse ChangePassword(ChangePasswordRequest userChangePassword)
        {
            var response = new ChangePasswordResponse();
            try
            {
                var res = UserManager.ChangePassword(userChangePassword.UserId, userChangePassword.OldPassword, userChangePassword.NewPassword);

                if (res.Errors.Count() > 0)
                {
                    response.ResponseStatus = new ResponseStatus
                    {
                        StatusCode = (int)HttpStatusCode.OK,
                        HttpStatus = HttpStatusCode.OK.ToString(),
                        Message = MessageDescription.TransactionFailed.GetDescription(),
                        Errors = new List<ResponseError>()
                        {
                            new ResponseError()
                            {
                                Message = res.Errors.FirstOrDefault()
                            }
                        }
                    };
                }
                else
                {
                    response.ResponseStatus = new ResponseStatus
                    {
                        StatusCode = (int)HttpStatusCode.OK,
                        HttpStatus = HttpStatusCode.OK.ToString()
                    };
                }
                return response;
            }
            catch (Exception ex)
            {
                response.ResponseStatus = new ResponseStatus
                {
                    StatusCode = (int)HttpStatusCode.ExpectationFailed,
                    HttpStatus = HttpStatusCode.ExpectationFailed.ToString(),
                    Message = MessageDescription.TransactionFailed.GetDescription()
                };
                return response;
            }
        }
        public UserRoleResponse AddUserToRole(UserRoleRequest userRoleDto)
        {
            var response = new UserRoleResponse();
            try
            {
                var res = UserManager.AddToRole(userRoleDto.UserId, userRoleDto.RoleName);
                if (res.Errors.Count() > 0)
                {
                    response.ResponseStatus = new ResponseStatus
                    {
                        StatusCode = (int)HttpStatusCode.BadRequest,
                        HttpStatus = HttpStatusCode.BadRequest.ToString(),
                        Message = MessageDescription.TransactionFailed.GetDescription(),
                        Errors = new List<ResponseError>()
                        {
                            new ResponseError()
                            {
                                Message = res.Errors.FirstOrDefault()
                            }
                        }
                    };
                }
                else
                {
                    response.UserId = userRoleDto.UserId;
                    response.ResponseStatus = new ResponseStatus
                    {
                        StatusCode = (int)HttpStatusCode.OK,
                        HttpStatus = HttpStatusCode.OK.ToString()
                    };
                }
            }
            catch (Exception ex)
            {
                response.ResponseStatus = new ResponseStatus
                {
                    StatusCode = (int)HttpStatusCode.ExpectationFailed,
                    HttpStatus = HttpStatusCode.ExpectationFailed.ToString(),
                    Message = MessageDescription.TransactionFailed.GetDescription(),
                    Errors = new List<ResponseError>()
                        {
                            new ResponseError()
                            {
                                Message = MessageDescription.TransactionFailed.GetDescription()
                            }
                        }
                };
                return response;
            }
            return response;
        }
        public BaseServiceResponse DeleteUser(UserRequest userRequest)
        {
            var response = new BaseServiceResponse();
            try
            {
                var user = UserManager.FindById(userRequest.UserId);
                var res = UserManager.Delete(user);
                if (res.Errors.Count() > 0)
                {
                    response.ResponseStatus = new ResponseStatus
                    {
                        StatusCode = (int)HttpStatusCode.BadRequest,
                        HttpStatus = HttpStatusCode.BadRequest.ToString(),
                        Message = MessageDescription.TransactionFailed.GetDescription(),
                        Errors = new List<ResponseError>()
                        {
                            new ResponseError()
                            {
                                Message = res.Errors.FirstOrDefault()
                            }
                        }
                    };
                }
                else
                {
                    response.ResponseStatus = new ResponseStatus
                    {
                        StatusCode = (int)HttpStatusCode.OK,
                        HttpStatus = HttpStatusCode.OK.ToString()
                    };
                }
                return response;
            }
            catch (Exception ex)
            {
                response.ResponseStatus = new ResponseStatus
                {
                    StatusCode = (int)HttpStatusCode.ExpectationFailed,
                    HttpStatus = HttpStatusCode.ExpectationFailed.ToString(),
                    Message = MessageDescription.TransactionFailed.GetDescription(),
                    Errors = new List<ResponseError>()
                        {
                            new ResponseError()
                            {
                                Message = MessageDescription.TransactionFailed.GetDescription()
                            }
                        }
                };
                return response;
            }
        }
        
        public List<ApplicationUserDTO> GetApplicationUsers()
        {
            var lst = UserManager.Users;
            return lst.ToList().Select(MapperHelper.ApplicationUserDTOMapper).ToList();
        }
    }
}
