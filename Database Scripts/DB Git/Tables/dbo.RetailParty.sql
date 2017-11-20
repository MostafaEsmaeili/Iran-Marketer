CREATE TABLE [dbo].[RetailParty]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[EnName] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[FirstName] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[EnFirstName] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[LastName] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[EnLastName] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[FatherName] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[EnFatherName] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[NationalId] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[NationalityPlaceId] [int] NULL,
[CityId] [int] NULL,
[FullName] [nvarchar] (220) COLLATE Persian_100_CI_AS NULL,
[Address] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[PhoneNumber] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[MobileNumber] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[BirthDate] [date] NULL,
[BirthPlace] [nvarchar] (100) COLLATE Persian_100_CI_AS NULL,
[Gender] [int] NULL,
[MilitaryServiceStatus] [int] NULL,
[MaritalStatus] [int] NULL,
[UserId] [nvarchar] (128) COLLATE Persian_100_CI_AS NOT NULL,
[UserName] [nvarchar] (100) COLLATE Persian_100_CI_AS NOT NULL,
[ValidFrom] [date] NULL,
[ValidUntil] [date] NULL,
[Modified] [datetime] NULL,
[Created] [datetime] NULL,
[ModifiedBy] [nvarchar] (128) COLLATE Persian_100_CI_AS NULL,
[CreatedBy] [nvarchar] (128) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[RetailParty] ADD CONSTRAINT [PK_Party] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RetailParty] ADD CONSTRAINT [FK_RetailParty_Region] FOREIGN KEY ([CityId]) REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[RetailParty] ADD CONSTRAINT [FK_RetailParty_Region1] FOREIGN KEY ([NationalityPlaceId]) REFERENCES [dbo].[Region] ([Id])
GO
