SET IDENTITY_INSERT [dbo].[Logs] ON
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (3169, '2017-12-10 12:52:16.000', N'Error', N'', N'MOSTAFA-PC', N'خطا در ورود - نام کاربری و یا کلمه عبور اشتباه است.', N'(F:\IranMarketer\Iran Marketer\API\Authentication\Src\IranMarketer.Authentication.API\AuthenticationProvider.cs:69)', N'IranMarketer.Authentication.AuthenticationProvider.Login', N'Login', N'Pikad.Framework.Infra.Validation.BusinessRuleException: خطا در ورود - نام کاربری و یا کلمه عبور اشتباه است.
   at Pikad.Framework.Infra.Validation.BRule.Assert(Boolean condition, String memberName, String message, Int32 code, Object[] parameters) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Validation\BRule.cs:line 28
   at Pikad.Framework.Infra.Validation.BRule.Assert(Boolean condition, String message, Int32 code, Object[] parameters) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Validation\BRule.cs:line 15
   at IranMarketer.Authentication.AuthenticationProvider.Login(String userName, String password, String clientId, String clientPassword, String identityServerAddress) in F:\IranMarketer\Iran Marketer\API\Authentication\Src\IranMarketer.Authentication.API\AuthenticationProvider.cs:line 69    at Pikad.Framework.Infra.Validation.BRule.Assert(Boolean condition, String memberName, String message, Int32 code, Object[] parameters) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Validation\BRule.cs:line 28
   at Pikad.Framework.Infra.Validation.BRule.Assert(Boolean condition, String message, Int32 code, Object[] parameters) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Validation\BRule.cs:line 15
   at IranMarketer.Authentication.AuthenticationProvider.Login(String userName, String password, String clientId, String clientPassword, String identityServerAddress) in F:\IranMarketer\Iran Marketer\API\Authentication\Src\IranMarketer.Authentication.API\AuthenticationProvider.cs:line 69
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (3170, '2017-12-10 12:52:16.000', N'Error', N'', N'MOSTAFA-PC', N'خطا در ورود - نام کاربری و یا کلمه عبور اشتباه است.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\AccountController.cs:615)', N'IranMarketer.WebAPI.Controllers.AccountController.Login', N'Login', N'Pikad.Framework.Infra.Validation.BusinessRuleException: خطا در ورود - نام کاربری و یا کلمه عبور اشتباه است.
   at Pikad.Framework.Infra.Validation.BRule.Assert(Boolean condition, String memberName, String message, Int32 code, Object[] parameters) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Validation\BRule.cs:line 28
   at Pikad.Framework.Infra.Validation.BRule.Assert(Boolean condition, String message, Int32 code, Object[] parameters) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Validation\BRule.cs:line 15
   at IranMarketer.Authentication.AuthenticationProvider.Login(String userName, String password, String clientId, String clientPassword, String identityServerAddress) in F:\IranMarketer\Iran Marketer\API\Authentication\Src\IranMarketer.Authentication.API\AuthenticationProvider.cs:line 80
   at IranMarketer.WebAPI.Controllers.AccountController.Login(UserLoginRequest filter) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\AccountController.cs:line 615    at Pikad.Framework.Infra.Validation.BRule.Assert(Boolean condition, String memberName, String message, Int32 code, Object[] parameters) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Validation\BRule.cs:line 28
   at Pikad.Framework.Infra.Validation.BRule.Assert(Boolean condition, String message, Int32 code, Object[] parameters) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Validation\BRule.cs:line 15
   at IranMarketer.Authentication.AuthenticationProvider.Login(String userName, String password, String clientId, String clientPassword, String identityServerAddress) in F:\IranMarketer\Iran Marketer\API\Authentication\Src\IranMarketer.Authentication.API\AuthenticationProvider.cs:line 80
   at IranMarketer.WebAPI.Controllers.AccountController.Login(UserLoginRequest filter) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\AccountController.cs:line 615
')
SET IDENTITY_INSERT [dbo].[Logs] OFF
SET IDENTITY_INSERT [dbo].[Logs] ON
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1, '2017-09-28 17:08:04.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.AcademicFields''.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:58)', N'IranMarketer.SharedData.SharedDataProvider.SaveOrUpdateAcademicField', N'SaveOrUpdateAcademicField', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.AcademicFields''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 58
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at IranMarketer.SharedData.SharedDataProvider.SaveOrUpdateAcademicField(AcademicField field) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 53
ClientConnectionId:abd033b2-2b0e-4ab2-b1f7-09f269ac2606
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 58
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at IranMarketer.SharedData.SharedDataProvider.SaveOrUpdateAcademicField(AcademicField field) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 53
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (2, '2017-09-28 17:08:07.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.AcademicFields''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:72)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.AcademicFields''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 58
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at IranMarketer.SharedData.SharedDataProvider.SaveOrUpdateAcademicField(AcademicField field) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 59
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 62
ClientConnectionId:abd033b2-2b0e-4ab2-b1f7-09f269ac2606
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 58
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at IranMarketer.SharedData.SharedDataProvider.SaveOrUpdateAcademicField(AcademicField field) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 59
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 62
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (3, '2017-09-28 23:54:47.000', N'Error', N'', N'MOSTAFA-PC', N'Object reference not set to an instance of an object.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:82)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 62    at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 62
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (4, '2017-09-28 23:59:06.000', N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:4c3d2139-3299-4030-a076-0caeba0e1a6b
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (5, '2017-09-28 23:59:06.000', N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:82)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 72
ClientConnectionId:4c3d2139-3299-4030-a076-0caeba0e1a6b
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 72
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (6, '2017-09-29 00:03:00.000', N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:6c76f6a7-4413-4d92-b3db-d58fa45869a5
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (7, '2017-09-29 00:03:01.000', N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:82)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 72
ClientConnectionId:6c76f6a7-4413-4d92-b3db-d58fa45869a5
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 72
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (8, '2017-09-29 00:05:26.000', N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:6c76f6a7-4413-4d92-b3db-d58fa45869a5
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (9, '2017-09-29 00:05:26.000', N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:82)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 72
ClientConnectionId:6c76f6a7-4413-4d92-b3db-d58fa45869a5
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 72
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (10, '2017-09-30 14:52:03.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (11, '2017-09-30 14:52:03.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (12, '2017-09-30 14:58:24.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (13, '2017-09-30 14:58:24.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (14, '2017-09-30 15:01:33.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (15, '2017-09-30 15:01:33.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (16, '2017-09-30 15:14:58.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (17, '2017-09-30 15:14:58.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (18, '2017-09-30 15:16:54.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (19, '2017-09-30 15:16:54.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (20, '2017-09-30 15:17:10.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (21, '2017-09-30 15:17:10.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (22, '2017-09-30 15:17:10.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (23, '2017-09-30 15:17:10.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (24, '2017-09-30 15:17:11.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (25, '2017-09-30 15:17:11.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (26, '2017-09-30 15:17:12.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (27, '2017-09-30 15:17:12.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (28, '2017-09-30 15:17:12.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (29, '2017-09-30 15:17:12.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (30, '2017-09-30 15:17:13.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (31, '2017-09-30 15:17:13.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (32, '2017-09-30 15:17:13.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (33, '2017-09-30 15:17:13.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (34, '2017-09-30 15:37:43.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (35, '2017-09-30 15:37:43.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (36, '2017-09-30 15:43:27.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (37, '2017-09-30 15:43:27.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (38, '2017-09-30 15:43:46.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (39, '2017-09-30 15:43:46.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (40, '2017-09-30 15:46:25.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (41, '2017-09-30 15:46:25.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (42, '2017-09-30 15:47:19.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (43, '2017-09-30 15:47:19.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (44, '2017-09-30 15:48:11.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (45, '2017-09-30 15:48:12.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (46, '2017-09-30 17:01:48.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (47, '2017-09-30 17:01:49.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (48, '2017-09-30 17:02:27.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (49, '2017-09-30 17:02:27.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (50, '2017-09-30 17:03:54.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (51, '2017-09-30 17:03:54.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (52, '2017-09-30 17:05:05.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (53, '2017-09-30 17:05:05.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (54, '2017-09-30 17:05:06.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (55, '2017-09-30 17:05:06.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (56, '2017-09-30 17:07:48.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (57, '2017-09-30 17:07:48.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (58, '2017-09-30 17:09:41.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (59, '2017-09-30 17:09:41.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (60, '2017-09-30 17:09:46.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (61, '2017-09-30 17:09:46.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (62, '2017-09-30 17:19:28.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (63, '2017-09-30 17:19:28.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (64, '2017-09-30 17:20:21.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (65, '2017-09-30 17:20:21.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (66, '2017-09-30 17:20:37.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (67, '2017-09-30 17:20:37.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (68, '2017-09-30 17:20:40.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (69, '2017-09-30 17:20:41.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (70, '2017-09-30 17:22:04.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (71, '2017-09-30 17:22:04.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (72, '2017-09-30 20:40:24.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (73, '2017-09-30 20:40:24.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (74, '2017-09-30 20:41:49.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (75, '2017-09-30 20:41:50.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (76, '2017-09-30 20:46:36.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (77, '2017-09-30 20:46:36.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (78, '2017-09-30 20:54:44.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (79, '2017-09-30 20:54:44.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (80, '2017-09-30 20:55:07.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (81, '2017-09-30 20:55:07.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (82, '2017-09-30 20:57:29.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (83, '2017-09-30 20:57:29.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (84, '2017-09-30 21:01:09.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (85, '2017-09-30 21:01:09.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (86, '2017-09-30 21:03:25.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (87, '2017-09-30 21:03:25.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (88, '2017-09-30 21:07:30.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (89, '2017-09-30 21:07:30.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (90, '2017-09-30 21:08:46.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (91, '2017-09-30 21:08:46.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (92, '2017-09-30 21:11:50.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (93, '2017-09-30 21:11:50.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (94, '2017-09-30 21:20:53.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (95, '2017-09-30 21:20:53.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (96, '2017-09-30 21:23:25.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (97, '2017-09-30 21:23:25.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (98, '2017-09-30 21:23:42.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (99, '2017-09-30 21:23:42.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (100, '2017-09-30 21:23:44.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (101, '2017-09-30 21:23:44.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (102, '2017-09-30 21:41:23.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (103, '2017-09-30 21:41:23.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (104, '2017-09-30 21:47:41.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (105, '2017-09-30 21:47:41.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (106, '2017-09-30 21:51:17.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (107, '2017-09-30 21:51:17.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (108, '2017-09-30 21:53:02.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (109, '2017-09-30 21:53:02.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (110, '2017-09-30 21:54:17.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (111, '2017-09-30 21:54:17.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (112, '2017-09-30 21:55:55.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (113, '2017-09-30 21:55:55.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (114, '2017-09-30 21:59:26.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (115, '2017-09-30 21:59:26.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (116, '2017-09-30 22:02:51.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (117, '2017-09-30 22:02:51.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (118, '2017-09-30 22:03:21.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (119, '2017-09-30 22:03:21.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (120, '2017-09-30 22:03:49.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (121, '2017-09-30 22:03:49.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (122, '2017-09-30 22:06:05.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (123, '2017-09-30 22:06:05.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (124, '2017-09-30 22:09:29.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (125, '2017-09-30 22:09:29.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (126, '2017-09-30 22:09:51.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (127, '2017-09-30 22:09:51.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (128, '2017-09-30 22:10:12.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (129, '2017-09-30 22:10:12.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (130, '2017-09-30 22:11:39.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (131, '2017-09-30 22:11:39.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (132, '2017-09-30 22:13:58.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (133, '2017-09-30 22:13:58.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (134, '2017-09-30 23:37:15.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (135, '2017-09-30 23:37:15.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (136, '2017-09-30 23:39:19.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (137, '2017-09-30 23:39:19.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:157)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry', N'SaveOrUpdateIndustry', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 147    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 147
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (138, '2017-09-30 23:43:11.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (139, '2017-09-30 23:43:11.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (140, '2017-09-30 23:43:11.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (141, '2017-09-30 23:43:11.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (142, '2017-09-30 23:43:16.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (143, '2017-09-30 23:43:16.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (144, '2017-09-30 23:44:28.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (145, '2017-09-30 23:44:28.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (146, '2017-09-30 23:44:47.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (147, '2017-09-30 23:44:47.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (148, '2017-09-30 23:44:57.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (149, '2017-09-30 23:44:57.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:157)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry', N'SaveOrUpdateIndustry', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 147    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 147
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (150, '2017-09-30 23:45:02.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (151, '2017-09-30 23:45:02.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (152, '2017-09-30 23:45:03.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (153, '2017-09-30 23:45:03.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 110
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (154, '2017-09-30 23:45:23.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (155, '2017-09-30 23:46:11.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:80de87ed-9fcf-478f-9a14-70c6b4f65dac
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (156, '2017-09-30 23:47:19.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:158)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry', N'SaveOrUpdateIndustry', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 148
ClientConnectionId:80de87ed-9fcf-478f-9a14-70c6b4f65dac
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 148
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (157, '2017-10-01 02:05:35.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (158, '2017-10-01 02:05:35.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:92)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 82    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 82
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (159, '2017-10-01 02:06:27.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (160, '2017-10-01 02:06:27.000', N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:92)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 82    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 82
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (161, '2017-10-01 12:47:32.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (162, '2017-10-01 12:47:32.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:197)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory', N'GetAllJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 187    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 187
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (163, '2017-10-01 13:18:31.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (164, '2017-10-01 13:18:31.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:197)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory', N'GetAllJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 187    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 187
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (165, '2017-10-01 13:19:03.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (166, '2017-10-01 13:19:03.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:234)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory', N'SaveOrUpdateJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 224    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 224
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (167, '2017-10-01 13:20:18.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (168, '2017-10-01 13:20:18.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:238)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory', N'SaveOrUpdateJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 228    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 228
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (169, '2017-10-01 13:20:30.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (170, '2017-10-01 13:26:02.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (171, '2017-10-01 13:26:02.000', N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:238)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory', N'SaveOrUpdateJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
   at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 228    at Castle.MicroKernel.DefaultKernel.Castle.MicroKernel.IKernelInternal.Resolve(Type service, IDictionary arguments, IReleasePolicy policy)
   at Castle.MicroKernel.DefaultKernel.Resolve(Type service, IDictionary arguments)
   at Castle.Windsor.WindsorContainer.Resolve[T]()
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.get_Service() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 19
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 228
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (172, '2017-10-01 13:30:39.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (173, '2017-10-01 13:31:17.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (174, '2017-10-01 13:31:17.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:238)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory', N'SaveOrUpdateJobCategory', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 228
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 228
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (175, '2017-10-01 13:31:20.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (176, '2017-10-01 13:31:20.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:197)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory', N'GetAllJobCategory', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 187
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 187
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (177, '2017-10-01 13:31:21.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (178, '2017-10-01 13:31:21.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:197)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory', N'GetAllJobCategory', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 187
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 72
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory() in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 187
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (179, '2017-10-01 13:31:28.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1144, '2017-10-06 23:41:03.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''shd.Region''.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''shd.Region''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
ClientConnectionId:36295d5d-afae-4a42-986d-10aa753f0615
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1145, '2017-10-06 23:41:04.000', N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''shd.Region''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''shd.Region''.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
ClientConnectionId:36295d5d-afae-4a42-986d-10aa753f0615
Error Number:208,State:1,Class:16    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1146, '2017-10-08 00:14:25.000', N'Error', N'', N'MOSTAFA-PC', N'ComponentActivator: could not instantiate IranMarketer.Common.Session.IranMarketerSession', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'Castle.MicroKernel.ComponentActivator.ComponentActivatorException: ComponentActivator: could not instantiate IranMarketer.Common.Session.IranMarketerSession ---> System.Reflection.TargetInvocationException: Exception has been thrown by the target of an invocation. ---> System.Data.SqlClient.SqlException: A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: TCP Provider, error: 0 - The remote computer refused the network connection.) ---> System.ComponentModel.Win32Exception: The remote computer refused the network connection
   --- End of inner exception stack trace ---
   at System.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData, DbConnectionPool pool, String accessToken, Boolean applyTransientFaultHandling)
   at System.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.SqlClient.SqlConnection.TryOpenInner(TaskCompletionSource`1 retry)
   at System.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry)
   at System.Data.SqlClient.SqlConnection.Open()
   at Pikad.Framework.UnitOfWork.Session`1.Connect(String connectionString) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\UnitOfWork\Session.cs:line 57
   at Pikad.Framework.UnitOfWork.Session`1..ctor(IDbFactory factory, String connectionString) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\UnitOfWork\Session.cs:line 22
   at IranMarketer.Common.Session.IranMarketerSession..ctor(IDbFactory session, IIranMarketerDatabase settings) in F:\IranMarketer\Iran Marketer\Core\Common\Src\Session\IranMarketerSession.cs:line 14
   --- End of inner exception stack trace ---
   at System.RuntimeMethodHandle.InvokeMethod(Object target, Object[] arguments, Signature sig, Boolean constructor)
   at System.Reflection.RuntimeConstructorInfo.Invoke(Object obj, BindingFlags invokeAttr, Binder binder, Object[] parameters, CultureInfo culture)
   at Castle.MicroKernel.ComponentActivator.DefaultComponentActivator.FastCreateInstance(Type implType, Object[] arguments, ConstructorCandidate constructor)
   at Castle.MicroKernel.ComponentActivator.DefaultComponentActivator.CreateInstanceCore(ConstructorCandidate constructor, Object[] arguments, Type implType)
   --- End of inner exception stack trace ---
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1147, '2017-10-08 00:14:25.000', N'Error', N'', N'MOSTAFA-PC', N'ComponentActivator: could not instantiate IranMarketer.Common.Session.IranMarketerSession', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'Castle.MicroKernel.ComponentActivator.ComponentActivatorException: ComponentActivator: could not instantiate IranMarketer.Common.Session.IranMarketerSession ---> System.Reflection.TargetInvocationException: Exception has been thrown by the target of an invocation. ---> System.Data.SqlClient.SqlException: A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: TCP Provider, error: 0 - The remote computer refused the network connection.) ---> System.ComponentModel.Win32Exception: The remote computer refused the network connection
   --- End of inner exception stack trace ---
   at System.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData, DbConnectionPool pool, String accessToken, Boolean applyTransientFaultHandling)
   at System.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.SqlClient.SqlConnection.TryOpenInner(TaskCompletionSource`1 retry)
   at System.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry)
   at System.Data.SqlClient.SqlConnection.Open()
   at Pikad.Framework.UnitOfWork.Session`1.Connect(String connectionString) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\UnitOfWork\Session.cs:line 57
   at Pikad.Framework.UnitOfWork.Session`1..ctor(IDbFactory factory, String connectionString) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\UnitOfWork\Session.cs:line 22
   at IranMarketer.Common.Session.IranMarketerSession..ctor(IDbFactory session, IIranMarketerDatabase settings) in F:\IranMarketer\Iran Marketer\Core\Common\Src\Session\IranMarketerSession.cs:line 14
   --- End of inner exception stack trace ---
   at System.RuntimeMethodHandle.InvokeMethod(Object target, Object[] arguments, Signature sig, Boolean constructor)
   at System.Reflection.RuntimeConstructorInfo.Invoke(Object obj, BindingFlags invokeAttr, Binder binder, Object[] parameters, CultureInfo culture)
   at Castle.MicroKernel.ComponentActivator.DefaultComponentActivator.FastCreateInstance(Type implType, Object[] arguments, ConstructorCandidate constructor)
   at Castle.MicroKernel.ComponentActivator.DefaultComponentActivator.CreateInstanceCore(ConstructorCandidate constructor, Object[] arguments, Type implType)
   --- End of inner exception stack trace ---
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1148, '2017-10-14 22:38:31.000', N'Error', N'', N'MOSTAFA-PC', N'Could not find stored procedure ''sec.GetAccessiblePagesByUsername''.', N'(F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessRepository.cs:111)', N'IranMarketer.UserManagement.ServiceAccessRepository.GetAccessiblePagesByUsername', N'GetAccessiblePagesByUsername', N'System.Data.SqlClient.SqlException (0x80131904): Could not find stored procedure ''sec.GetAccessiblePagesByUsername''.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at Dapper.SqlMapper.ExecuteReaderWithFlagsFallback(IDbCommand cmd, Boolean wasClosed, CommandBehavior behavior)
   at Dapper.SqlMapper.<QueryImpl>d__125`1.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Dapper.SqlMapper.Query[T](IDbConnection cnn, String sql, Object param, IDbTransaction transaction, Boolean buffered, Nullable`1 commandTimeout, Nullable`1 commandType)
   at IranMarketer.UserManagement.ServiceAccessRepository.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessRepository.cs:line 105
ClientConnectionId:f799f74b-9c03-4e28-990f-a8064161ec1a
Error Number:2812,State:62,Class:16    at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at Dapper.SqlMapper.ExecuteReaderWithFlagsFallback(IDbCommand cmd, Boolean wasClosed, CommandBehavior behavior)
   at Dapper.SqlMapper.<QueryImpl>d__125`1.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Dapper.SqlMapper.Query[T](IDbConnection cnn, String sql, Object param, IDbTransaction transaction, Boolean buffered, Nullable`1 commandTimeout, Nullable`1 commandType)
   at IranMarketer.UserManagement.ServiceAccessRepository.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessRepository.cs:line 105
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1149, '2017-10-14 22:38:31.000', N'Error', N'', N'MOSTAFA-PC', N'Could not find stored procedure ''sec.GetAccessiblePagesByUsername''.', N'(F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessService.cs:93)', N'IranMarketer.UserManagement.ServiceAccessService.GetAccessiblePagesByUsername', N'GetAccessiblePagesByUsername', N'System.Data.SqlClient.SqlException (0x80131904): Could not find stored procedure ''sec.GetAccessiblePagesByUsername''.
   at IranMarketer.UserManagement.ServiceAccessRepository.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessRepository.cs:line 112
   at IranMarketer.UserManagement.ServiceAccessService.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessService.cs:line 89
ClientConnectionId:f799f74b-9c03-4e28-990f-a8064161ec1a
Error Number:2812,State:62,Class:16    at IranMarketer.UserManagement.ServiceAccessRepository.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessRepository.cs:line 112
   at IranMarketer.UserManagement.ServiceAccessService.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessService.cs:line 89
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1150, '2017-10-17 00:11:59.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1151, '2017-10-17 00:11:59.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1152, '2017-10-17 00:18:25.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1153, '2017-10-17 00:18:25.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1154, '2017-10-17 00:31:00.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1155, '2017-10-17 00:31:00.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1156, '2017-10-17 00:32:00.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1157, '2017-10-17 00:32:00.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1158, '2017-10-17 00:34:34.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1159, '2017-10-17 00:34:34.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1160, '2017-10-17 00:40:34.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1161, '2017-10-17 00:40:34.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1162, '2017-10-17 00:42:30.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1163, '2017-10-17 00:42:30.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1164, '2017-10-17 00:42:34.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1165, '2017-10-17 00:42:34.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1166, '2017-10-17 00:55:20.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1167, '2017-10-17 00:55:20.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1168, '2017-10-17 00:55:52.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1169, '2017-10-17 00:55:52.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1170, '2017-10-17 00:58:12.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1171, '2017-10-17 00:58:12.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1172, '2017-10-17 00:58:47.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1173, '2017-10-17 00:58:47.000', N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT INTO [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (2169, '2017-10-20 03:16:23.000', N'Error', N'', N'MOSTAFA-PC', N'Exception occurred in NLog', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\AccountController.cs:641)', N'IranMarketer.WebAPI.Controllers.AccountController.Login', N'Login', N'NLog.NLogRuntimeException: Exception occurred in NLog ---> System.Data.SqlClient.SqlException: A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: TCP Provider, error: 0 - The remote computer refused the network connection.) ---> System.ComponentModel.Win32Exception: The remote computer refused the network connection
   --- End of inner exception stack trace ---
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.SqlClient.SqlConnection.TryOpenInner(TaskCompletionSource`1 retry)
   at System.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry)
   at System.Data.SqlClient.SqlConnection.Open()
   at NLog.Targets.DatabaseTarget.OpenConnection(String connectionString)
   at NLog.Targets.DatabaseTarget.EnsureConnectionOpen(String connectionString)
   at NLog.Targets.DatabaseTarget.WriteEventToDatabase(LogEventInfo logEvent)
   at NLog.Targets.DatabaseTarget.Write(LogEventInfo logEvent)
   at NLog.Targets.Target.Write(AsyncLogEventInfo logEvent)
   --- End of inner exception stack trace ---
   at NLog.LoggerImpl.<>c__DisplayClass1.<Write>b__0(Exception ex)
   at NLog.Internal.SingleCallContinuation.Function(Exception exception)
   at NLog.Targets.Target.Write(AsyncLogEventInfo logEvent)
   at NLog.Targets.Target.WriteAsyncLogEvent(AsyncLogEventInfo logEvent)
   at NLog.LoggerImpl.WriteToTargetWithFilterChain(TargetWithFilterChain targetListHead, LogEventInfo logEvent, AsyncContinuation onException)
   at NLog.LoggerImpl.Write(Type loggerType, TargetWithFilterChain targets, LogEventInfo logEvent, LogFactory factory)
   at NLog.Logger.WriteToTargets(Type wrapperType, LogEventInfo logEvent)
   at NLog.Logger.Log(Type wrapperType, LogEventInfo logEvent)
   at Pikad.Framework.Infra.Logging.CustomLogger.ErrorException(String message, Exception exception) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Logging\CustomLogger.cs:line 21
   at IranMarketer.Authentication.AuthenticationProvider.Login(String userName, String password, String clientId, String clientPassword, String identityServerAddress) in F:\IranMarketer\Iran Marketer\API\Authentication\Src\IranMarketer.Authentication.API\AuthenticationProvider.cs:line 79
   at IranMarketer.WebAPI.Controllers.AccountController.Login(UserLoginRequest filter) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\AccountController.cs:line 615    at NLog.LoggerImpl.<>c__DisplayClass1.<Write>b__0(Exception ex)
   at NLog.Internal.SingleCallContinuation.Function(Exception exception)
   at NLog.Targets.Target.Write(AsyncLogEventInfo logEvent)
   at NLog.Targets.Target.WriteAsyncLogEvent(AsyncLogEventInfo logEvent)
   at NLog.LoggerImpl.WriteToTargetWithFilterChain(TargetWithFilterChain targetListHead, LogEventInfo logEvent, AsyncContinuation onException)
   at NLog.LoggerImpl.Write(Type loggerType, TargetWithFilterChain targets, LogEventInfo logEvent, LogFactory factory)
   at NLog.Logger.WriteToTargets(Type wrapperType, LogEventInfo logEvent)
   at NLog.Logger.Log(Type wrapperType, LogEventInfo logEvent)
   at Pikad.Framework.Infra.Logging.CustomLogger.ErrorException(String message, Exception exception) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Logging\CustomLogger.cs:line 21
   at IranMarketer.Authentication.AuthenticationProvider.Login(String userName, String password, String clientId, String clientPassword, String identityServerAddress) in F:\IranMarketer\Iran Marketer\API\Authentication\Src\IranMarketer.Authentication.API\AuthenticationProvider.cs:line 79
   at IranMarketer.WebAPI.Controllers.AccountController.Login(UserLoginRequest filter) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\AccountController.cs:line 615
')
SET IDENTITY_INSERT [dbo].[Logs] OFF
