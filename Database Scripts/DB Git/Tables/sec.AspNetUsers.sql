CREATE TABLE [sec].[AspNetUsers]
(
[Id] [nvarchar] (128) COLLATE Persian_100_CI_AS NOT NULL,
[Hometown] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[Email] [nvarchar] (256) COLLATE Persian_100_CI_AS NULL,
[EmailConfirmed] [bit] NOT NULL,
[PasswordHash] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[SecurityStamp] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[PhoneNumber] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[PhoneNumberConfirmed] [bit] NOT NULL,
[TwoFactorEnabled] [bit] NOT NULL,
[LockoutEndDateUtc] [datetime] NULL,
[LockoutEnabled] [bit] NOT NULL,
[AccessFailedCount] [int] NOT NULL,
[UserName] [nvarchar] (256) COLLATE Persian_100_CI_AS NOT NULL,
[DisplayName] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[CreateDate] [datetime] NULL,
[IsAdmin] [bit] NOT NULL,
[Status] [int] NULL,
[IsCustomizedAccess] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [sec].[AspNetUsers] ADD CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
