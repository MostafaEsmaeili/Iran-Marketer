USE [IranMarketer]
GO
/****** Object:  Schema [sec]    Script Date: 10/17/2017 1:17:27 AM ******/
CREATE SCHEMA [sec]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdjustedPriceModels]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdjustedPriceModels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ISIN] [nvarchar](max) NULL,
	[Value] [decimal](18, 2) NOT NULL,
	[Type] [int] NOT NULL,
	[FromDateJalali] [nvarchar](max) NULL,
	[ToDateJalali] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Reason] [nvarchar](max) NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Symbol] [nvarchar](max) NULL,
	[ProductTitle] [nvarchar](max) NULL,
	[SecurityExchangeId] [int] NOT NULL,
	[TypeTitle] [nvarchar](max) NULL,
	[IsEditMode] [bit] NOT NULL,
	[SubmitButton] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AdjustedPriceModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocType] [int] NOT NULL,
	[DocTitle] [nchar](10) NULL,
	[binery] [varbinary](max) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[PartyId] [int] NULL,
	[UserId] [nvarchar](256) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industries]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TitleFa] [nvarchar](max) NULL,
	[TitleEn] [nvarchar](max) NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Industries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCategories]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TitleFa] [nvarchar](1000) NULL,
	[TitleEn] [nvarchar](1000) NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
 CONSTRAINT [PK_JobCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPrefer]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPrefer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExpectedSalary] [int] NULL,
	[BusinessTrips] [int] NULL,
	[Relocate] [int] NULL,
	[PartyId] [int] NOT NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nchar](10) NULL,
 CONSTRAINT [PK_JobPrefer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPreferIndustry]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPreferIndustry](
	[JobPreferId] [int] NOT NULL,
	[IndustryId] [int] NOT NULL,
 CONSTRAINT [PK_JobPreferIndustry] PRIMARY KEY CLUSTERED 
(
	[JobPreferId] ASC,
	[IndustryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPreferJobCategory]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPreferJobCategory](
	[JobPreferId] [int] NOT NULL,
	[jobCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_JobPreferJobCategory] PRIMARY KEY CLUSTERED 
(
	[JobPreferId] ASC,
	[jobCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventDateTime] [datetime] NOT NULL,
	[EventLevel] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[MachineName] [nvarchar](100) NOT NULL,
	[EventMessage] [nvarchar](max) NOT NULL,
	[ErrorSource] [nvarchar](max) NULL,
	[ErrorClass] [nvarchar](500) NULL,
	[ErrorMethod] [nvarchar](max) NULL,
	[InnerErrorMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartyUniversity]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartyUniversity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DegreeLevel] [int] NULL,
	[AcademicFieldId] [int] NOT NULL,
	[University] [nvarchar](300) NULL,
	[CountryId] [int] NULL,
	[CityId] [int] NULL,
	[FromDate] [int] NULL,
	[ToDate] [int] NULL,
	[Average] [decimal](2, 2) NULL,
	[PartyId] [int] NOT NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_PartyUniversity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[EnTitle] [nvarchar](250) NULL,
	[CodeId] [nvarchar](20) NULL,
	[RegionType] [int] NULL,
	[ZipCode] [nvarchar](20) NULL,
	[ValidFrom] [date] NULL,
	[ValidUntil] [date] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RetailParty]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RetailParty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[EnName] [nvarchar](100) NULL,
	[FirstName] [nvarchar](100) NULL,
	[EnFirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[EnLastName] [nvarchar](100) NULL,
	[FatherName] [nvarchar](100) NULL,
	[EnFatherName] [nvarchar](100) NULL,
	[NationalId] [nvarchar](50) NULL,
	[NationalityPlaceId] [int] NULL,
	[CityId] [int] NULL,
	[FullName] [nvarchar](220) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[BirthDate] [date] NULL,
	[BirthPlace] [nvarchar](100) NULL,
	[Gender] [int] NULL,
	[MilitaryServiceStatus] [int] NULL,
	[MaritalStatus] [int] NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidUntil] [date] NULL,
	[Modified] [datetime] NULL,
	[Created] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[CreatedBy] [nvarchar](128) NULL,
 CONSTRAINT [PK_Party] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkExperience]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkExperience](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartyId] [int] NOT NULL,
	[JobTitle] [nvarchar](500) NULL,
	[JobCategoryId] [int] NULL,
	[CompanyName] [nvarchar](500) NULL,
	[IndustryId] [int] NULL,
	[CountryId] [int] NULL,
	[CityId] [int] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Achievements] [nvarchar](max) NULL,
	[StillInThisWork] [bit] NULL,
 CONSTRAINT [PK_WorkExperience] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [sec].[AcademicFields]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[AcademicFields](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TitleEn] [nvarchar](1000) NULL,
	[TitleFa] [nvarchar](1000) NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
 CONSTRAINT [PK_AcademicFields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[AspNetRoles]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[AspNetUserClaims]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [sec].[AspNetUserLogins]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[AspNetUserRoles]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[AspNetUsers]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Hometown] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[IsAdmin] [bit] NOT NULL,
	[Status] [int] NULL,
	[IsCustomizedAccess] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [sec].[ClientClaims]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ClientClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
	[Client_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[ClientCorsOrigins]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ClientCorsOrigins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Origin] [nvarchar](150) NOT NULL,
	[Client_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientCorsOrigins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[ClientCustomGrantTypes]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ClientCustomGrantTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GrantType] [nvarchar](250) NOT NULL,
	[Client_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientCustomGrantTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[ClientIdPRestrictions]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ClientIdPRestrictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Provider] [nvarchar](200) NOT NULL,
	[Client_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientIdPRestrictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[ClientPostLogoutRedirectUris]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ClientPostLogoutRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Uri] [nvarchar](2000) NOT NULL,
	[Client_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[ClientRedirectUris]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ClientRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Uri] [nvarchar](2000) NOT NULL,
	[Client_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[Clients]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[ClientName] [nvarchar](200) NOT NULL,
	[ClientUri] [nvarchar](2000) NULL,
	[LogoUri] [nvarchar](max) NULL,
	[RequireConsent] [bit] NOT NULL,
	[AllowRememberConsent] [bit] NOT NULL,
	[AllowAccessTokensViaBrowser] [bit] NOT NULL,
	[Flow] [int] NOT NULL,
	[AllowClientCredentialsOnly] [bit] NOT NULL,
	[LogoutUri] [nvarchar](max) NULL,
	[LogoutSessionRequired] [bit] NOT NULL,
	[RequireSignOutPrompt] [bit] NOT NULL,
	[AllowAccessToAllScopes] [bit] NOT NULL,
	[IdentityTokenLifetime] [int] NOT NULL,
	[AccessTokenLifetime] [int] NOT NULL,
	[AuthorizationCodeLifetime] [int] NOT NULL,
	[AbsoluteRefreshTokenLifetime] [int] NOT NULL,
	[SlidingRefreshTokenLifetime] [int] NOT NULL,
	[RefreshTokenUsage] [int] NOT NULL,
	[UpdateAccessTokenOnRefresh] [bit] NOT NULL,
	[RefreshTokenExpiration] [int] NOT NULL,
	[AccessTokenType] [int] NOT NULL,
	[EnableLocalLogin] [bit] NOT NULL,
	[IncludeJwtId] [bit] NOT NULL,
	[AlwaysSendClientClaims] [bit] NOT NULL,
	[PrefixClientClaims] [bit] NOT NULL,
	[AllowAccessToAllGrantTypes] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [sec].[ClientScopes]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ClientScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Scope] [nvarchar](200) NOT NULL,
	[Client_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[ClientSecrets]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ClientSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
	[Type] [nvarchar](250) NULL,
	[Description] [nvarchar](2000) NULL,
	[Expiration] [datetimeoffset](7) NULL,
	[Client_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[Consents]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[Consents](
	[Subject] [nvarchar](200) NOT NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Scopes] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_dbo.Consents] PRIMARY KEY CLUSTERED 
(
	[Subject] ASC,
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[PageRepository]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[PageRepository](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceRepositoryId] [int] NULL,
	[PageType] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[ScopeClaims]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ScopeClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[AlwaysIncludeInIdToken] [bit] NOT NULL,
	[Scope_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ScopeClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[Scopes]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[Scopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[Type] [int] NOT NULL,
	[IncludeAllClaimsForUser] [bit] NOT NULL,
	[ClaimsRule] [nvarchar](200) NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[AllowUnrestrictedIntrospection] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Scopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sec].[ScopeSecrets]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sec].[ScopeSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Expiration] [datetimeoffset](7) NULL,
	[Type] [nvarchar](250) NULL,
	[Value] [nvarchar](250) NOT NULL,
	[Scope_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ScopeSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201710152110543_InitialCreate', N'IranMarketer.App.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5DDB6EE4B8117D0F907F10F49404DE6E5F328389D1DE85A76D6F3A195F30ED59E46DC096D86D6624AA57A2BC3616FB6579C827E517424AD48537896AA92F5E2CB0708BE4A962B1C82A96AA34FFFBCF7F273FBC8481F30CE30445F8C23D191DBB0EC45EE423BCBA7053B2FCEE83FBC3F77FFCC3E4DA0F5F9C9F8A7E67AC1F1D89930BF78990F5F9789C784F3004C928445E1C25D1928CBC281C033F1A9F1E1FFF6D7C72328614C2A5588E33F99C62824298FDA03FA711F6E09AA420B88D7C1824FC396D9967A8CE1D0861B2061EBC706731C0B720FE06098C4797EBF5281FE23A970102949D390C96AE03308E082094D9F32F099C9338C2ABF99A3E00C1E3EB1AD27E4B1024904FE2BCEA6E3B9FE353369F7135B080F2D284446147C093332EA0B13C7C2331BBA500A908AFA9A8C92B9B7526C60BF7D2FF372502FD87187930939EEBC864CFA741CC8668E43D8DC275842126B9E4472ADC91631E74542A11D535F6DF91334D0392C6F002C394C4808E7E481701F2FE095F1FA36F105FE03408EA33A273A26DC203FAE8218ED63026AF9FE192CF73E6BBCE581C37960796C36A63F8BC31393B759D3B4A1C2C02582A4C4D467312C5F04788610CD8FC01A1B3C50C03662257A84BB4E84F3FF5483BC96698D97C7657205045A71BD7756EC1CB278857E4E9C2A57FBACE0D7A817EF184A37EC188EE733A88C4692B919F40C03AE554AEA0874240B5E621A67FF193E383EBCC3DC0B8EE3E0506DB4F083771145ED155F807084080B62E8EC76887C4AE60E2C5689D9F065BA6F51982640764A631645BA65428FAE391DA83CECB4E8F1BB4440300CD5FC345146C7DDE7CCB3F2212C0AD139B432F8DE93974FDE23D01BC827D0F1A3676379CCF926B1F11664B0A521FA3288000775FD7741122F231256470AD9E8C2BCBDA686F0B7BF03962A2335BDADBD2A45F26EB3B4846C5C0510E791353B85FA2F8DBA88E78E4588FAB6CEFA9ADED3D3B592CCF3EBC7B0FFCB3F77F8567EF766F8735AB7572FAC16AB53AEA0AFB7F03D5D377EF07A17A079ED12A5B7A893E755463EAC77E8641D69A3CA175EECE0AEBFD957763168FFD16F52B6FFD3A8FD2D86393898C5D1E41BC82A4A74A33A8E1D5BA403D7CD5669CAAEAADEDCA26B4C94E2848EC7A3714FC6E97AEB5C6D14B045DBC4CB598443ADD58F21BE24882506F296FE66EB23B2DB80E016A728B6C0F450B2AD3082F511C56CEDCA636FF0124093D13FCBF83E469674ED69C8070BD7DFFF1895EA2EFD270C176C0EE680DB6348FBF4437C0A3D7E66BCC46F5C6FB1479DFA2945C639F79FE5F88A75E042C010661E7D2F36092DC506586FE344A31E9E770B3536ADF4EC9340028D47B25D279FAB5E85A7926FA1E8A7762E8A6F3509A58FD14AD10B663B5E86A6635EFD1CA2AEFD695550666C729EF696634EBD0CA67DE6B309F2F5BA1E19DBE0CF6F0BDBE430F2CEECB65CC96AF1ECBDB5EFC8851126292FBBAD433596787C0F0BB21833DFCDD90B1491F3F239F79251657A1A23385B7EAAFBF65B5EF3989B35D6F07619ABB26BE9B33C0B45D2E9324F250B60B3441301EC210F9A73E9CD31ECFC86723C744E8C4A8A22366F2E8133A375756AA7B7C05037ACF732EBDFCA5DC14241EF05531D209F91D182B2CAA86B12A362232F7178526D57418B341805D8212BA531126EAB640D8436B10B44A491A6969C2D8DC4B1A72CB155C43CC08B64AC286B83E14C21828E9488BD226A1C9B8A671CD8A68F05A4D6BDEE6C256EBAE442876A2932DBEB3412FB9FFB615C56C96D80E94B35924360C18C37AFB50507E57B15500F9E272680A2ADD980C0ACA5DAA9D28A828B13D28A8289237A7A0F915D576FDA5FBEAA1A9A77851DEBD596F14D71E745390C781A966EE7BD231848E80B1AA9E570BD6085F88E67246F9E4F7B384BBBAB28A30F03924C6ACA9C4752AEFB750624D6ED5B8199847781428D1C16D0191B5B309B0D2E01650FEA6519DA4BC533B305704091BB9E3EE4907D822A0D708CB8D8A045B532E15BBFEC6B5D6D1FC5E56D67AAB6B4D39B3521B94DD63750BA9E16814423E15C5895B08C514F0550563E3647771B36B13E38BD120A01697D820A46232834BA950CD7629E93CBD2EBE5E2F29497E99414AC564069712D7D1762169BC8D0EFE462F1189BEC1409BAD08A19466AC6C9B8CF3EC67FE603236A4494F6EC17A8DF0AA9636CD9F38F33C677AFADDBC7B1E7198638CBD44934E5C725B5222510C56506AA5A429A737284EC815206001580069EA874A37ADD1361CFF0549B35D5697B4B00AC558F6373FE94DD902AA2557DD1F0E7743A71E321F2A0BDCD714C306C46159EE2000B1E68DC1340AD2109B1D3BF3E85A72711DA4F6D81E2BCF301678C99ED823F0507D1D823FB2C7C85F2CD421F227F6087292701D4B6EEBC05764C2145BEC118584DF3AA0D0608F5724F5D6A18A67F62865CE6E1DA67C688F53E5ECD681AAA7F64845D26E1DA778D679A7F0CC56CD66E12D1DF8D224DE0A3C6ADABBED030DB3B5C71D76762DD156D8DFB5E71DE62D24DB0A33165A54C4C9583A4995CBA372842B577CD13A58D90E932FD1DD5A0897B5EE76A279F8762C449E59521F9F3F3998D551BDAA2157AABC056FBE5A660893CC8BE0485DEAA6808919A5787F229CE786772A7B5B3DD37578034F4C0A376CE086B5216C6787F1E4C93A007FD411A3967FA780D5DA3AD83C214552B079424B779BC7F32075E68E3775E0B29EED2830596FD808CF20517D8F0EB659C96F144CB4D26A8FACC974AC436B9A37C0D6F02CB7D9A36A9221EBC09A667BEC2A33523E490FD886198360FD8C581E2CED67C50C18DB3916873182B56433E142523DEE88A5B9A3D69F1FA44A192386FD542A0F94F753290386F90C1272B5C423A831C1CC8C29246049173B73029A19AF9BE26E553D94A8A1DCA5A45E460FA528E18447ECDABFB8A084F0F22EACFC3B1723BB7527048623D66134FF39980608B203BDE8700B305AC284E44987EEE9F1C9A9F4BD86C3F976C23849FC4013F16CFE8082B8723BC822464CBEAD79C2DD3316C52F1264547A7C8F003F83D87B02F19F42F0F2E73A52E76F0EF8DBFCE6C026D3D47F71A0D784755F15E805A8F972402F3CF1EB00BDA0A42F00F8F40719E20B001B03895F00E835375D957F2F407325FF269AABD4F1F7E24DADD55FA0EE3CE9EAF43BB0B5592DFECE0FED62466A22768F52F50A54C97199611FBE5CB8BF66A3CEB3B79AECAFECF191334BBE60F4734A1B1EA9409DDFD4C2B2614A779BC365075A686D2FD5D9BFBEE6438F9CFB983A3BE7CEB124CB4D56582CBFEEC44D3EB407371B1765BFDD0D25D4396B51A50DB17959F326C7A3AEA479108B22942DF7337A6A69F250788388D0547ABC0996B1EC58E77DD84C565F86BC096BC612E44D3C05B900D9FE182A46EED1D468625A6FF6627658B649A9F3EC7713506A39B7E9F8194253BFCB52C7C1ACA3A6927130EC7DAAF6D6CB170FA562B14AF9DE6FA1E22E6B131B5EF0FFAE4A120FA0884693BBBFFFC2C35DEB9AE93DDC81576F752B2F3C3065E3151DFB2F22DCB5B299DED01DB8B2752A153C305DDB97FDDCB3A6599BD0BD17FEA9A506F2B2B655F45916F4E5EF3FE96D7F115185C8BD4B6D79A065015BAE3C0A69B1594B34FB208CBEE2C444ACD25623C1AA8B99A8B9D44511B3BC735519CB3D9AC9769B2BF7381A27CBFB349335148835D1E606A89136EFD34CDB5076B58FD2456DE193AE9CB4E5206DCAA77D4BA58AC24C5A2A63DB9CE6C6ECACB7549938885084DD63C82F7A3B8588838864C8ADD3A1F0504D15A2C6BBF64FB850072241AB0A82FD832E187A82D92EFBCCF0322ABC0789A3A28BFC8E1F12E0539B7E1913B4041EA1CD2CC89D7DD12A0B1CB2572D0BE8CFF07D4AD629A15386E12210226ECC0B69A29F55578A3C4FEEB3CC896488295036117B39708F3FA628F04BBE6F3441290304736F784899AD2561A1E5D56B897417614B202EBED22B7B84E13AA060C93D9E8367B8096F54FD3EC115F05EAB10A409A47D2144B14FAE1058C5204C3846359EFEA43AEC872FDFFF1F5D0E8CEAC9680000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Industries] ON 

INSERT [dbo].[Industries] ([Id], [TitleFa], [TitleEn], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'تستv v', N'test', CAST(N'2017-09-30T23:47:23.917' AS DateTime), N'Test', CAST(N'2017-10-01T00:55:12.800' AS DateTime), N'Test')
INSERT [dbo].[Industries] ([Id], [TitleFa], [TitleEn], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'سسسسس', N'ssssss', CAST(N'2017-10-01T00:55:30.300' AS DateTime), N'Test', CAST(N'2017-10-01T00:55:30.300' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Industries] OFF
SET IDENTITY_INSERT [dbo].[JobCategories] ON 

INSERT [dbo].[JobCategories] ([Id], [TitleFa], [TitleEn], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'بازاریابی شبکه ای2', N'Network Marketing', CAST(N'2017-10-01T13:33:33.237' AS DateTime), N'Test', CAST(N'2017-10-01T13:35:02.307' AS DateTime), N'Test')
SET IDENTITY_INSERT [dbo].[JobCategories] OFF
SET IDENTITY_INSERT [dbo].[JobPrefer] ON 

INSERT [dbo].[JobPrefer] ([Id], [ExpectedSalary], [BusinessTrips], [Relocate], [PartyId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 0, 2, 2, 1, CAST(N'2017-10-17T01:00:09.180' AS DateTime), N'mostafa', CAST(N'2017-10-17T01:00:08.700' AS DateTime), N'mostafa   ')
SET IDENTITY_INSERT [dbo].[JobPrefer] OFF
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1, CAST(N'2017-09-28T17:08:04.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.AcademicFields''.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:58)', N'IranMarketer.SharedData.SharedDataProvider.SaveOrUpdateAcademicField', N'SaveOrUpdateAcademicField', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.AcademicFields''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 58
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at IranMarketer.SharedData.SharedDataProvider.SaveOrUpdateAcademicField(AcademicField field) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 53
ClientConnectionId:abd033b2-2b0e-4ab2-b1f7-09f269ac2606
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 58
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at IranMarketer.SharedData.SharedDataProvider.SaveOrUpdateAcademicField(AcademicField field) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 53
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (2, CAST(N'2017-09-28T17:08:07.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.AcademicFields''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:72)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.AcademicFields''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (3, CAST(N'2017-09-28T23:54:47.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Object reference not set to an instance of an object.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:82)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 62    at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 62
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (4, CAST(N'2017-09-28T23:59:06.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:4c3d2139-3299-4030-a076-0caeba0e1a6b
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (5, CAST(N'2017-09-28T23:59:06.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:82)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (6, CAST(N'2017-09-29T00:03:00.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:6c76f6a7-4413-4d92-b3db-d58fa45869a5
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (7, CAST(N'2017-09-29T00:03:01.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:82)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (8, CAST(N'2017-09-29T00:05:26.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:6c76f6a7-4413-4d92-b3db-d58fa45869a5
Error Number:241,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (9, CAST(N'2017-09-29T00:05:26.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Conversion failed when converting date and/or time from character string.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:82)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlClient.SqlException (0x80131904): Conversion failed when converting date and/or time from character string.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (10, CAST(N'2017-09-30T14:52:03.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (11, CAST(N'2017-09-30T14:52:03.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (12, CAST(N'2017-09-30T14:58:24.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (13, CAST(N'2017-09-30T14:58:24.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (14, CAST(N'2017-09-30T15:01:33.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (15, CAST(N'2017-09-30T15:01:33.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (16, CAST(N'2017-09-30T15:14:58.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (17, CAST(N'2017-09-30T15:14:58.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (18, CAST(N'2017-09-30T15:16:54.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (19, CAST(N'2017-09-30T15:16:54.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (20, CAST(N'2017-09-30T15:17:10.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (21, CAST(N'2017-09-30T15:17:10.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (22, CAST(N'2017-09-30T15:17:10.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (23, CAST(N'2017-09-30T15:17:10.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (24, CAST(N'2017-09-30T15:17:11.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (25, CAST(N'2017-09-30T15:17:11.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (26, CAST(N'2017-09-30T15:17:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (27, CAST(N'2017-09-30T15:17:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (28, CAST(N'2017-09-30T15:17:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (29, CAST(N'2017-09-30T15:17:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (30, CAST(N'2017-09-30T15:17:13.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (31, CAST(N'2017-09-30T15:17:13.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (32, CAST(N'2017-09-30T15:17:13.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (33, CAST(N'2017-09-30T15:17:13.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (34, CAST(N'2017-09-30T15:37:43.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (35, CAST(N'2017-09-30T15:37:43.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (36, CAST(N'2017-09-30T15:43:27.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (37, CAST(N'2017-09-30T15:43:27.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (38, CAST(N'2017-09-30T15:43:46.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (39, CAST(N'2017-09-30T15:43:46.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (40, CAST(N'2017-09-30T15:46:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (41, CAST(N'2017-09-30T15:46:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (42, CAST(N'2017-09-30T15:47:19.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (43, CAST(N'2017-09-30T15:47:19.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (44, CAST(N'2017-09-30T15:48:11.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:e6726bae-6260-47a5-bac2-4458dca03ebb
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (45, CAST(N'2017-09-30T15:48:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (46, CAST(N'2017-09-30T17:01:48.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (47, CAST(N'2017-09-30T17:01:49.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (48, CAST(N'2017-09-30T17:02:27.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (49, CAST(N'2017-09-30T17:02:27.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (50, CAST(N'2017-09-30T17:03:54.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (51, CAST(N'2017-09-30T17:03:54.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (52, CAST(N'2017-09-30T17:05:05.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (53, CAST(N'2017-09-30T17:05:05.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (54, CAST(N'2017-09-30T17:05:06.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (55, CAST(N'2017-09-30T17:05:06.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (56, CAST(N'2017-09-30T17:07:48.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (57, CAST(N'2017-09-30T17:07:48.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (58, CAST(N'2017-09-30T17:09:41.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (59, CAST(N'2017-09-30T17:09:41.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (60, CAST(N'2017-09-30T17:09:46.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (61, CAST(N'2017-09-30T17:09:46.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (62, CAST(N'2017-09-30T17:19:28.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (63, CAST(N'2017-09-30T17:19:28.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (64, CAST(N'2017-09-30T17:20:21.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (65, CAST(N'2017-09-30T17:20:21.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (66, CAST(N'2017-09-30T17:20:37.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (67, CAST(N'2017-09-30T17:20:37.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (68, CAST(N'2017-09-30T17:20:40.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (69, CAST(N'2017-09-30T17:20:41.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (70, CAST(N'2017-09-30T17:22:04.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (71, CAST(N'2017-09-30T17:22:04.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (72, CAST(N'2017-09-30T20:40:24.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (73, CAST(N'2017-09-30T20:40:24.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (74, CAST(N'2017-09-30T20:41:49.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (75, CAST(N'2017-09-30T20:41:50.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (76, CAST(N'2017-09-30T20:46:36.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (77, CAST(N'2017-09-30T20:46:36.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (78, CAST(N'2017-09-30T20:54:44.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (79, CAST(N'2017-09-30T20:54:44.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (80, CAST(N'2017-09-30T20:55:07.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (81, CAST(N'2017-09-30T20:55:07.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (82, CAST(N'2017-09-30T20:57:29.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (83, CAST(N'2017-09-30T20:57:29.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (84, CAST(N'2017-09-30T21:01:09.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (85, CAST(N'2017-09-30T21:01:09.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (86, CAST(N'2017-09-30T21:03:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (87, CAST(N'2017-09-30T21:03:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (88, CAST(N'2017-09-30T21:07:30.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (89, CAST(N'2017-09-30T21:07:30.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (90, CAST(N'2017-09-30T21:08:46.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (91, CAST(N'2017-09-30T21:08:46.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (92, CAST(N'2017-09-30T21:11:50.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (93, CAST(N'2017-09-30T21:11:50.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (94, CAST(N'2017-09-30T21:20:53.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (95, CAST(N'2017-09-30T21:20:53.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (96, CAST(N'2017-09-30T21:23:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (97, CAST(N'2017-09-30T21:23:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (98, CAST(N'2017-09-30T21:23:42.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (99, CAST(N'2017-09-30T21:23:42.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
GO
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (100, CAST(N'2017-09-30T21:23:44.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (101, CAST(N'2017-09-30T21:23:44.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (102, CAST(N'2017-09-30T21:41:23.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (103, CAST(N'2017-09-30T21:41:23.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (104, CAST(N'2017-09-30T21:47:41.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (105, CAST(N'2017-09-30T21:47:41.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (106, CAST(N'2017-09-30T21:51:17.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (107, CAST(N'2017-09-30T21:51:17.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (108, CAST(N'2017-09-30T21:53:02.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (109, CAST(N'2017-09-30T21:53:02.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (110, CAST(N'2017-09-30T21:54:17.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (111, CAST(N'2017-09-30T21:54:17.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (112, CAST(N'2017-09-30T21:55:55.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (113, CAST(N'2017-09-30T21:55:55.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (114, CAST(N'2017-09-30T21:59:26.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (115, CAST(N'2017-09-30T21:59:26.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (116, CAST(N'2017-09-30T22:02:51.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (117, CAST(N'2017-09-30T22:02:51.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (118, CAST(N'2017-09-30T22:03:21.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (119, CAST(N'2017-09-30T22:03:21.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (120, CAST(N'2017-09-30T22:03:49.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (121, CAST(N'2017-09-30T22:03:49.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (122, CAST(N'2017-09-30T22:06:05.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (123, CAST(N'2017-09-30T22:06:05.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (124, CAST(N'2017-09-30T22:09:29.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (125, CAST(N'2017-09-30T22:09:29.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (126, CAST(N'2017-09-30T22:09:51.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (127, CAST(N'2017-09-30T22:09:51.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (128, CAST(N'2017-09-30T22:10:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (129, CAST(N'2017-09-30T22:10:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (130, CAST(N'2017-09-30T22:11:39.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (131, CAST(N'2017-09-30T22:11:39.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (132, CAST(N'2017-09-30T22:13:58.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (133, CAST(N'2017-09-30T22:13:58.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (134, CAST(N'2017-09-30T23:37:15.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (135, CAST(N'2017-09-30T23:37:15.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (136, CAST(N'2017-09-30T23:39:19.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (137, CAST(N'2017-09-30T23:39:19.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:157)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry', N'SaveOrUpdateIndustry', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 147    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 147
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (138, CAST(N'2017-09-30T23:43:11.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (139, CAST(N'2017-09-30T23:43:11.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (140, CAST(N'2017-09-30T23:43:11.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (141, CAST(N'2017-09-30T23:43:11.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (142, CAST(N'2017-09-30T23:43:16.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (143, CAST(N'2017-09-30T23:43:16.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (144, CAST(N'2017-09-30T23:44:28.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (145, CAST(N'2017-09-30T23:44:28.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (146, CAST(N'2017-09-30T23:44:47.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (147, CAST(N'2017-09-30T23:44:47.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (148, CAST(N'2017-09-30T23:44:57.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (149, CAST(N'2017-09-30T23:44:57.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:157)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry', N'SaveOrUpdateIndustry', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 147    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 147
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (150, CAST(N'2017-09-30T23:45:02.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (151, CAST(N'2017-09-30T23:45:02.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (152, CAST(N'2017-09-30T23:45:03.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:ef0d8763-e619-4852-ba53-2dc1a9841fa6
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (153, CAST(N'2017-09-30T23:45:03.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:120)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllIndausries', N'GetAllIndausries', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (154, CAST(N'2017-09-30T23:45:23.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (155, CAST(N'2017-09-30T23:46:11.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:80de87ed-9fcf-478f-9a14-70c6b4f65dac
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (156, CAST(N'2017-09-30T23:47:19.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.Industries''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:158)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateIndustry', N'SaveOrUpdateIndustry', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.Industries''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (157, CAST(N'2017-10-01T02:05:35.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (158, CAST(N'2017-10-01T02:05:35.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:92)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 82    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 82
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (159, CAST(N'2017-10-01T02:06:27.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (160, CAST(N'2017-10-01T02:06:27.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:92)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled', N'SaveOrUpdateAcademicFiled', N'System.Data.SqlTypes.SqlTypeException: SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 82    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 107
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateAcademicFiled(ApiRequest`1 request) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 82
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (161, CAST(N'2017-10-01T12:47:32.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (162, CAST(N'2017-10-01T12:47:32.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:197)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory', N'GetAllJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (163, CAST(N'2017-10-01T13:18:31.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (164, CAST(N'2017-10-01T13:18:31.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:197)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory', N'GetAllJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (165, CAST(N'2017-10-01T13:19:03.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (166, CAST(N'2017-10-01T13:19:03.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:234)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory', N'SaveOrUpdateJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (167, CAST(N'2017-10-01T13:20:18.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (168, CAST(N'2017-10-01T13:20:18.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:238)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory', N'SaveOrUpdateJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (169, CAST(N'2017-10-01T13:20:30.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (170, CAST(N'2017-10-01T13:26:02.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (171, CAST(N'2017-10-01T13:26:02.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:238)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory', N'SaveOrUpdateJobCategory', N'Castle.MicroKernel.ComponentNotFoundException: No component for supporting the service IranMarketer.SharedData.Interface.IJobCategoryService was found
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (172, CAST(N'2017-10-01T13:30:39.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (173, CAST(N'2017-10-01T13:31:17.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (174, CAST(N'2017-10-01T13:31:17.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:238)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.SaveOrUpdateJobCategory', N'SaveOrUpdateJobCategory', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (175, CAST(N'2017-10-01T13:31:20.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (176, CAST(N'2017-10-01T13:31:20.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:197)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory', N'GetAllJobCategory', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (177, CAST(N'2017-10-01T13:31:21.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:71)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll', N'GetAll', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 67
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (178, CAST(N'2017-10-01T13:31:21.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:197)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetAllJobCategory', N'GetAllJobCategory', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (179, CAST(N'2017-10-01T13:31:28.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''dbo.JobCategories''.', N'(F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:106)', N'Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate', N'SaveOrUpdate', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''dbo.JobCategories''.
   at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
ClientConnectionId:9875d590-36f9-4d3f-a227-4c909b537175
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositorySaveOrUpdate.cs:line 166
   at Pikad.Framework.Infra.Service.Service`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 79
   at Pikad.Framework.Infra.Provider.AbstractProvider`3.SaveOrUpdate(TEntity entity) in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Provider\AbstractProvider.cs:line 102
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1144, CAST(N'2017-10-06T23:41:03.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''shd.Region''.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''shd.Region''.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
ClientConnectionId:36295d5d-afae-4a42-986d-10aa753f0615
Error Number:208,State:1,Class:16    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1145, CAST(N'2017-10-06T23:41:04.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Invalid object name ''shd.Region''.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''shd.Region''.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
ClientConnectionId:36295d5d-afae-4a42-986d-10aa753f0615
Error Number:208,State:1,Class:16    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1146, CAST(N'2017-10-08T00:14:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'ComponentActivator: could not instantiate IranMarketer.Common.Session.IranMarketerSession', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'Castle.MicroKernel.ComponentActivator.ComponentActivatorException: ComponentActivator: could not instantiate IranMarketer.Common.Session.IranMarketerSession ---> System.Reflection.TargetInvocationException: Exception has been thrown by the target of an invocation. ---> System.Data.SqlClient.SqlException: A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: TCP Provider, error: 0 - The remote computer refused the network connection.) ---> System.ComponentModel.Win32Exception: The remote computer refused the network connection
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1147, CAST(N'2017-10-08T00:14:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'ComponentActivator: could not instantiate IranMarketer.Common.Session.IranMarketerSession', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'Castle.MicroKernel.ComponentActivator.ComponentActivatorException: ComponentActivator: could not instantiate IranMarketer.Common.Session.IranMarketerSession ---> System.Reflection.TargetInvocationException: Exception has been thrown by the target of an invocation. ---> System.Data.SqlClient.SqlException: A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: TCP Provider, error: 0 - The remote computer refused the network connection.) ---> System.ComponentModel.Win32Exception: The remote computer refused the network connection
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1148, CAST(N'2017-10-14T22:38:31.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Could not find stored procedure ''sec.GetAccessiblePagesByUsername''.', N'(F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessRepository.cs:111)', N'IranMarketer.UserManagement.ServiceAccessRepository.GetAccessiblePagesByUsername', N'GetAccessiblePagesByUsername', N'System.Data.SqlClient.SqlException (0x80131904): Could not find stored procedure ''sec.GetAccessiblePagesByUsername''.
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
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1149, CAST(N'2017-10-14T22:38:31.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'Could not find stored procedure ''sec.GetAccessiblePagesByUsername''.', N'(F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessService.cs:93)', N'IranMarketer.UserManagement.ServiceAccessService.GetAccessiblePagesByUsername', N'GetAccessiblePagesByUsername', N'System.Data.SqlClient.SqlException (0x80131904): Could not find stored procedure ''sec.GetAccessiblePagesByUsername''.
   at IranMarketer.UserManagement.ServiceAccessRepository.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessRepository.cs:line 112
   at IranMarketer.UserManagement.ServiceAccessService.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessService.cs:line 89
ClientConnectionId:f799f74b-9c03-4e28-990f-a8064161ec1a
Error Number:2812,State:62,Class:16    at IranMarketer.UserManagement.ServiceAccessRepository.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessRepository.cs:line 112
   at IranMarketer.UserManagement.ServiceAccessService.GetAccessiblePagesByUsername(String username, Applications application) in F:\IranMarketer\Iran Marketer\Core\UserManagement\Src\IranMarketer.UserManagement\Authorization\ServiceAccessService.cs:line 89
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1150, CAST(N'2017-10-17T00:11:59.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1151, CAST(N'2017-10-17T00:11:59.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1152, CAST(N'2017-10-17T00:18:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1153, CAST(N'2017-10-17T00:18:25.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1154, CAST(N'2017-10-17T00:31:00.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1155, CAST(N'2017-10-17T00:31:00.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1156, CAST(N'2017-10-17T00:32:00.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1157, CAST(N'2017-10-17T00:32:00.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1158, CAST(N'2017-10-17T00:34:34.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1159, CAST(N'2017-10-17T00:34:34.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1160, CAST(N'2017-10-17T00:40:34.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1161, CAST(N'2017-10-17T00:40:34.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1162, CAST(N'2017-10-17T00:42:30.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1163, CAST(N'2017-10-17T00:42:30.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
GO
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1164, CAST(N'2017-10-17T00:42:34.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1165, CAST(N'2017-10-17T00:42:34.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1166, CAST(N'2017-10-17T00:55:20.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1167, CAST(N'2017-10-17T00:55:20.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1168, CAST(N'2017-10-17T00:55:52.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1169, CAST(N'2017-10-17T00:55:52.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1170, CAST(N'2017-10-17T00:58:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1171, CAST(N'2017-10-17T00:58:12.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1172, CAST(N'2017-10-17T00:58:47.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:51)', N'IranMarketer.SharedData.RegionProvider.SearchRegion', N'SearchRegion', N'System.ArgumentException: An item with the same key has already been added.
   at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45    at Pikad.Framework.Repository.Repository`2.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Repository\RepositoryGetAll.cs:line 52
   at Pikad.Framework.Infra.Service.Service`3.GetAll() in F:\IranMarketer\Iran Marketer\Framework\Pikad.Framework\Infra\Service\Service.cs:line 47
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 45
')
INSERT [dbo].[Logs] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [InnerErrorMessage]) VALUES (1173, CAST(N'2017-10-17T00:58:47.000' AS DateTime), N'Error', N'', N'MOSTAFA-PC', N'An item with the same key has already been added.', N'(F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:48)', N'IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter', N'GetRegionsByFilter', N'System.ArgumentException: An item with the same key has already been added.
   at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39    at IranMarketer.SharedData.RegionProvider.SearchRegion(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\SharedData\Src\IranMarketer.SharedData\SharedDataProvider.cs:line 52
   at IranMarketer.WebAPI.Controllers.SharedData.SharedDataController.GetRegionsByFilter(String filter, RegionType regionType) in F:\IranMarketer\Iran Marketer\API\WebApi\Src\IranMarketer.WebAPI\Controllers\SharedData\SharedDataController.cs:line 39
')
SET IDENTITY_INSERT [dbo].[Logs] OFF
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (1, N'آذربایجان شرقی', N'East Azerbaijan', N'100', 2, N'041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (2, N'آذربایجان غربی', N'west Azerbaijan', N'101', 2, N'044', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (3, N'اردبیل', N'Ardabil', N'102', 2, N'045', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (4, N'اصفهان', N'Isfahan', N'103', 2, N'031', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (5, N'البرز', N'Alborz', N'104', 2, N'026', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (6, N'ایلام', N'Ilam', N'105', 2, N'084', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (7, N'بوشهر', N'Bushehr', N'106', 2, N'077', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (8, N'تهران', N'Tehran', N'107', 2, N'021', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (9, N'چهارمحال و بختیاری', N'Charmahal and Bakhtiari', N'108', 2, N'038', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (10, N'خراسان جنوبی', N'South Khorasan', N'109', 2, N'056', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (11, N'خراسان رضوی', N'Razavi Khorasan', N'110', 2, N'051', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (12, N'خراسان شمالی', N'North Khorasan', N'111', 2, N' 058', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (13, N'خوزستان', N'Khuzestan', N'112', 2, N'061', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (14, N'زنجان', N'Zanjan', N'113', 2, N'024', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (15, N'سمنان', N'Semnan', N'114', 2, N'20', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (16, N'سیستان و بلوچستان', N'Sistan and Baluchestan', N'115', 2, N'054', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (17, N'فارس', N'Fars', N'116', 2, N'071', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (18, N'قزوین', N'Qazvin', N'117', 2, N'028', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (19, N'قم', N'Qom', N'118', 2, N'025', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (20, N'کردستان', N'Kurdestan', N'119', 2, N'087', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (21, N'کرمان', N'Kerman', N'120', 2, N'034', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (22, N'کرمانشاه', N'Kermanshah', N'121', 2, N'083', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (23, N'کهگیلویه و بویراحمد', N'Kohghliuyeh and Boyer-Ahmad', N'122', 2, N'074', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (24, N'گلستان', N'Golestan', N'123', 2, N'017', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (25, N'گیلان', N'Gilan', N'124', 2, N'013', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (26, N'لرستان', N'Lorestan', N'125', 2, N'066', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (27, N'مازندران', N'Mazandaran', N'126', 2, N'011', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (28, N'مرکزی', N'Markazi', N'127', 2, N'086', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (29, N'هرمزگان', N'hormozgan', N'128', 2, N'76', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (30, N'همدان', N'Hamadan', N'129', 2, N'081', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Region] ([Id], [Title], [EnTitle], [CodeId], [RegionType], [ZipCode], [ValidFrom], [ValidUntil], [Created], [Modified], [CreatedBy], [ModifiedBy]) VALUES (31, N'یزد', N'Yazd', N'130', 2, N'035', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Region] OFF
SET IDENTITY_INSERT [dbo].[RetailParty] ON 

INSERT [dbo].[RetailParty] ([Id], [Name], [EnName], [FirstName], [EnFirstName], [LastName], [EnLastName], [FatherName], [EnFatherName], [NationalId], [NationalityPlaceId], [CityId], [FullName], [Address], [PhoneNumber], [MobileNumber], [BirthDate], [BirthPlace], [Gender], [MilitaryServiceStatus], [MaritalStatus], [UserId], [UserName], [ValidFrom], [ValidUntil], [Modified], [Created], [ModifiedBy], [CreatedBy]) VALUES (1, NULL, NULL, N'مصطفی', NULL, N'اسماعیلی 2', NULL, NULL, NULL, NULL, NULL, 15, NULL, N'اتوبان رسالت خیابان 16 متری اول جنوبی(شهید همایی) خیابان امیری پلاک 25 واحد 7', N'02122523760', N'09120174515', CAST(N'2017-09-26' AS Date), NULL, 1, 5, 2, N'48232f07-768e-4546-ac08-8b8bfc31a862', N'mostafa', NULL, NULL, CAST(N'2017-10-16T20:41:12.320' AS DateTime), CAST(N'2017-10-14T20:38:57.113' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[RetailParty] OFF
SET IDENTITY_INSERT [sec].[AcademicFields] ON 

INSERT [sec].[AcademicFields] ([Id], [TitleEn], [TitleFa], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'مهندسی کامپیوتر-نرم افزار', N'Software Engeener', NULL, NULL, NULL, NULL)
INSERT [sec].[AcademicFields] ([Id], [TitleEn], [TitleFa], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'stringqqqqq', N'stringwwwww', CAST(N'2017-09-29T00:05:31.833' AS DateTime), N'string', CAST(N'2017-10-01T02:07:00.540' AS DateTime), N'Test')
SET IDENTITY_INSERT [sec].[AcademicFields] OFF
INSERT [sec].[AspNetUsers] ([Id], [Hometown], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [DisplayName], [CreateDate], [IsAdmin], [Status], [IsCustomizedAccess]) VALUES (N'48232f07-768e-4546-ac08-8b8bfc31a862', NULL, N'mostafa.esmaeili8@gmail.com', 1, N'AJhFskIZ4MevVAmw0QUbofxp9yO9MDb2W2DgukaqtVEU7wE2RHqhX+GVoRHtghC6vA==', N'a56d02d2-dfd0-4dfc-9908-3029b95f6c16', NULL, 1, 0, NULL, 1, 0, N'mostafa', N'مصطفی اسماعیلی', CAST(N'2017-10-14T20:38:56.973' AS DateTime), 0, 1, 0)
SET IDENTITY_INSERT [sec].[Clients] ON 

INSERT [sec].[Clients] ([Id], [Enabled], [ClientId], [ClientName], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AllowAccessTokensViaBrowser], [Flow], [AllowClientCredentialsOnly], [LogoutUri], [LogoutSessionRequired], [RequireSignOutPrompt], [AllowAccessToAllScopes], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [PrefixClientClaims], [AllowAccessToAllGrantTypes]) VALUES (1, 1, N'IranMarketer', N'IranMarketer', NULL, NULL, 1, 0, 0, 4, 0, NULL, 0, 0, 0, 300, 360000, 300, 300, 1296000, 1, 0, 0, 0, 1, 0, 0, 1, 0)
SET IDENTITY_INSERT [sec].[Clients] OFF
SET IDENTITY_INSERT [sec].[ClientScopes] ON 

INSERT [sec].[ClientScopes] ([Id], [Scope], [Client_Id]) VALUES (1, N'openid', 1)
INSERT [sec].[ClientScopes] ([Id], [Scope], [Client_Id]) VALUES (2, N'email', 1)
INSERT [sec].[ClientScopes] ([Id], [Scope], [Client_Id]) VALUES (3, N'profile', 1)
INSERT [sec].[ClientScopes] ([Id], [Scope], [Client_Id]) VALUES (4, N'iranMarketerMail', 1)
SET IDENTITY_INSERT [sec].[ClientScopes] OFF
SET IDENTITY_INSERT [sec].[ClientSecrets] ON 

INSERT [sec].[ClientSecrets] ([Id], [Value], [Type], [Description], [Expiration], [Client_Id]) VALUES (1, N'87PVKSC8RVBgg0aFonMoj8n+1p/5TOC/KtX74hQGFwYAfVgwu9BHtUvveWI2eMfDTPxK7z2kge2Tk9OfVlu0yg==', N'SharedSecret', NULL, NULL, 1)
SET IDENTITY_INSERT [sec].[ClientSecrets] OFF
SET IDENTITY_INSERT [sec].[ScopeClaims] ON 

INSERT [sec].[ScopeClaims] ([Id], [Name], [Description], [AlwaysIncludeInIdToken], [Scope_Id]) VALUES (1, N'email', N'email', 1, 4)
INSERT [sec].[ScopeClaims] ([Id], [Name], [Description], [AlwaysIncludeInIdToken], [Scope_Id]) VALUES (2, N'name', N'name', 1, 4)
INSERT [sec].[ScopeClaims] ([Id], [Name], [Description], [AlwaysIncludeInIdToken], [Scope_Id]) VALUES (3, N'preferred_username', N'preferred_username', 1, 4)
INSERT [sec].[ScopeClaims] ([Id], [Name], [Description], [AlwaysIncludeInIdToken], [Scope_Id]) VALUES (4, N'sub', N'sub', 1, 4)
INSERT [sec].[ScopeClaims] ([Id], [Name], [Description], [AlwaysIncludeInIdToken], [Scope_Id]) VALUES (5, N'role', N'role', 1, 4)
INSERT [sec].[ScopeClaims] ([Id], [Name], [Description], [AlwaysIncludeInIdToken], [Scope_Id]) VALUES (6, N'status', N'status', 1, 4)
SET IDENTITY_INSERT [sec].[ScopeClaims] OFF
SET IDENTITY_INSERT [sec].[Scopes] ON 

INSERT [sec].[Scopes] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [Type], [IncludeAllClaimsForUser], [ClaimsRule], [ShowInDiscoveryDocument], [AllowUnrestrictedIntrospection]) VALUES (1, 1, N'email', NULL, NULL, 0, 0, 0, 0, NULL, 0, 0)
INSERT [sec].[Scopes] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [Type], [IncludeAllClaimsForUser], [ClaimsRule], [ShowInDiscoveryDocument], [AllowUnrestrictedIntrospection]) VALUES (2, 1, N'openid', NULL, NULL, 0, 0, 0, 0, NULL, 0, 0)
INSERT [sec].[Scopes] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [Type], [IncludeAllClaimsForUser], [ClaimsRule], [ShowInDiscoveryDocument], [AllowUnrestrictedIntrospection]) VALUES (3, 1, N'profile', NULL, NULL, 0, 0, 0, 0, NULL, 0, 0)
INSERT [sec].[Scopes] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [Type], [IncludeAllClaimsForUser], [ClaimsRule], [ShowInDiscoveryDocument], [AllowUnrestrictedIntrospection]) VALUES (4, 1, N'iranMarketerMail', NULL, NULL, 0, 0, 1, 1, NULL, 0, 0)
SET IDENTITY_INSERT [sec].[Scopes] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_RetailParty] FOREIGN KEY([PartyId])
REFERENCES [dbo].[RetailParty] ([Id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_RetailParty]
GO
ALTER TABLE [dbo].[JobPrefer]  WITH CHECK ADD  CONSTRAINT [FK_JobPrefer_RetailParty] FOREIGN KEY([PartyId])
REFERENCES [dbo].[RetailParty] ([Id])
GO
ALTER TABLE [dbo].[JobPrefer] CHECK CONSTRAINT [FK_JobPrefer_RetailParty]
GO
ALTER TABLE [dbo].[JobPreferIndustry]  WITH CHECK ADD  CONSTRAINT [FK_JobPreferIndustry_Industries] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[Industries] ([Id])
GO
ALTER TABLE [dbo].[JobPreferIndustry] CHECK CONSTRAINT [FK_JobPreferIndustry_Industries]
GO
ALTER TABLE [dbo].[JobPreferIndustry]  WITH CHECK ADD  CONSTRAINT [FK_JobPreferIndustry_JobPrefer] FOREIGN KEY([JobPreferId])
REFERENCES [dbo].[JobPrefer] ([Id])
GO
ALTER TABLE [dbo].[JobPreferIndustry] CHECK CONSTRAINT [FK_JobPreferIndustry_JobPrefer]
GO
ALTER TABLE [dbo].[JobPreferJobCategory]  WITH CHECK ADD  CONSTRAINT [FK_JobPreferJobCategory_JobCategories] FOREIGN KEY([jobCategoryId])
REFERENCES [dbo].[JobCategories] ([Id])
GO
ALTER TABLE [dbo].[JobPreferJobCategory] CHECK CONSTRAINT [FK_JobPreferJobCategory_JobCategories]
GO
ALTER TABLE [dbo].[JobPreferJobCategory]  WITH CHECK ADD  CONSTRAINT [FK_JobPreferJobCategory_JobPrefer] FOREIGN KEY([JobPreferId])
REFERENCES [dbo].[JobPrefer] ([Id])
GO
ALTER TABLE [dbo].[JobPreferJobCategory] CHECK CONSTRAINT [FK_JobPreferJobCategory_JobPrefer]
GO
ALTER TABLE [dbo].[PartyUniversity]  WITH CHECK ADD  CONSTRAINT [FK_PartyUniversity_AcademicFields] FOREIGN KEY([AcademicFieldId])
REFERENCES [sec].[AcademicFields] ([Id])
GO
ALTER TABLE [dbo].[PartyUniversity] CHECK CONSTRAINT [FK_PartyUniversity_AcademicFields]
GO
ALTER TABLE [dbo].[PartyUniversity]  WITH CHECK ADD  CONSTRAINT [FK_PartyUniversity_Region] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[PartyUniversity] CHECK CONSTRAINT [FK_PartyUniversity_Region]
GO
ALTER TABLE [dbo].[PartyUniversity]  WITH CHECK ADD  CONSTRAINT [FK_PartyUniversity_Region1] FOREIGN KEY([CityId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[PartyUniversity] CHECK CONSTRAINT [FK_PartyUniversity_Region1]
GO
ALTER TABLE [dbo].[PartyUniversity]  WITH CHECK ADD  CONSTRAINT [FK_PartyUniversity_RetailParty] FOREIGN KEY([PartyId])
REFERENCES [dbo].[RetailParty] ([Id])
GO
ALTER TABLE [dbo].[PartyUniversity] CHECK CONSTRAINT [FK_PartyUniversity_RetailParty]
GO
ALTER TABLE [dbo].[RetailParty]  WITH CHECK ADD  CONSTRAINT [FK_RetailParty_Region] FOREIGN KEY([CityId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[RetailParty] CHECK CONSTRAINT [FK_RetailParty_Region]
GO
ALTER TABLE [dbo].[RetailParty]  WITH CHECK ADD  CONSTRAINT [FK_RetailParty_Region1] FOREIGN KEY([NationalityPlaceId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[RetailParty] CHECK CONSTRAINT [FK_RetailParty_Region1]
GO
ALTER TABLE [dbo].[WorkExperience]  WITH CHECK ADD  CONSTRAINT [FK_WorkExperience_Industries] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[Industries] ([Id])
GO
ALTER TABLE [dbo].[WorkExperience] CHECK CONSTRAINT [FK_WorkExperience_Industries]
GO
ALTER TABLE [dbo].[WorkExperience]  WITH CHECK ADD  CONSTRAINT [FK_WorkExperience_JobCategories] FOREIGN KEY([JobCategoryId])
REFERENCES [dbo].[JobCategories] ([Id])
GO
ALTER TABLE [dbo].[WorkExperience] CHECK CONSTRAINT [FK_WorkExperience_JobCategories]
GO
ALTER TABLE [dbo].[WorkExperience]  WITH CHECK ADD  CONSTRAINT [FK_WorkExperience_Region] FOREIGN KEY([CityId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[WorkExperience] CHECK CONSTRAINT [FK_WorkExperience_Region]
GO
ALTER TABLE [dbo].[WorkExperience]  WITH CHECK ADD  CONSTRAINT [FK_WorkExperience_RetailParty] FOREIGN KEY([PartyId])
REFERENCES [dbo].[RetailParty] ([Id])
GO
ALTER TABLE [dbo].[WorkExperience] CHECK CONSTRAINT [FK_WorkExperience_RetailParty]
GO
ALTER TABLE [sec].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [sec].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [sec].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [sec].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [sec].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [sec].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [sec].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [sec].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [sec].[ClientClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientClaims_dbo.Clients_Client_Id] FOREIGN KEY([Client_Id])
REFERENCES [sec].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ClientClaims] CHECK CONSTRAINT [FK_dbo.ClientClaims_dbo.Clients_Client_Id]
GO
ALTER TABLE [sec].[ClientCorsOrigins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientCorsOrigins_dbo.Clients_Client_Id] FOREIGN KEY([Client_Id])
REFERENCES [sec].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ClientCorsOrigins] CHECK CONSTRAINT [FK_dbo.ClientCorsOrigins_dbo.Clients_Client_Id]
GO
ALTER TABLE [sec].[ClientCustomGrantTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientCustomGrantTypes_dbo.Clients_Client_Id] FOREIGN KEY([Client_Id])
REFERENCES [sec].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ClientCustomGrantTypes] CHECK CONSTRAINT [FK_dbo.ClientCustomGrantTypes_dbo.Clients_Client_Id]
GO
ALTER TABLE [sec].[ClientIdPRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientIdPRestrictions_dbo.Clients_Client_Id] FOREIGN KEY([Client_Id])
REFERENCES [sec].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ClientIdPRestrictions] CHECK CONSTRAINT [FK_dbo.ClientIdPRestrictions_dbo.Clients_Client_Id]
GO
ALTER TABLE [sec].[ClientPostLogoutRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientPostLogoutRedirectUris_dbo.Clients_Client_Id] FOREIGN KEY([Client_Id])
REFERENCES [sec].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ClientPostLogoutRedirectUris] CHECK CONSTRAINT [FK_dbo.ClientPostLogoutRedirectUris_dbo.Clients_Client_Id]
GO
ALTER TABLE [sec].[ClientRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientRedirectUris_dbo.Clients_Client_Id] FOREIGN KEY([Client_Id])
REFERENCES [sec].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ClientRedirectUris] CHECK CONSTRAINT [FK_dbo.ClientRedirectUris_dbo.Clients_Client_Id]
GO
ALTER TABLE [sec].[ClientScopes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientScopes_dbo.Clients_Client_Id] FOREIGN KEY([Client_Id])
REFERENCES [sec].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ClientScopes] CHECK CONSTRAINT [FK_dbo.ClientScopes_dbo.Clients_Client_Id]
GO
ALTER TABLE [sec].[ClientSecrets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientSecrets_dbo.Clients_Client_Id] FOREIGN KEY([Client_Id])
REFERENCES [sec].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ClientSecrets] CHECK CONSTRAINT [FK_dbo.ClientSecrets_dbo.Clients_Client_Id]
GO
ALTER TABLE [sec].[ScopeClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScopeClaims_dbo.Scopes_Scope_Id] FOREIGN KEY([Scope_Id])
REFERENCES [sec].[Scopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ScopeClaims] CHECK CONSTRAINT [FK_dbo.ScopeClaims_dbo.Scopes_Scope_Id]
GO
ALTER TABLE [sec].[ScopeSecrets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScopeSecrets_dbo.Scopes_Scope_Id] FOREIGN KEY([Scope_Id])
REFERENCES [sec].[Scopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [sec].[ScopeSecrets] CHECK CONSTRAINT [FK_dbo.ScopeSecrets_dbo.Scopes_Scope_Id]
GO
/****** Object:  StoredProcedure [dbo].[SearchRegions]    Script Date: 10/17/2017 1:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchRegions] @filter NVARCHAR(100) , @type INT 
AS
    BEGIN
        SELECT  *
        FROM    dbo.Region
        WHERE   EnTitle LIKE N'%' + @filter + '%' AND RegionType = @type
        UNION
        SELECT  *
        FROM    dbo.Region
        WHERE   Title LIKE N'%' + @filter + '%'  AND RegionType = @type
        UNION
        SELECT  *
        FROM    dbo.Region
        WHERE   ZipCode LIKE N'%' + @filter + '%'  AND RegionType = @type
		 UNION
        SELECT  *
        FROM    dbo.Region
        WHERE   CAST(Id AS NVARCHAR(50)) = N'' + @filter + ''  AND RegionType = @type
            
    END
GO
