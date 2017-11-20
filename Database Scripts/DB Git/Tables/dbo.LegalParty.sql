CREATE TABLE [dbo].[LegalParty]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (500) COLLATE Persian_100_CI_AS NOT NULL,
[WebSite] [nvarchar] (500) COLLATE Persian_100_CI_AS NULL,
[Phone] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[IndustryId] [int] NULL,
[LegalPartyCityId] [int] NULL,
[Address] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[About] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[BrandSize] [int] NULL,
[CompanyOwnershipType] [int] NULL,
[EstablishmentYear] [date] NULL,
[Created] [datetime] NULL,
[CreatedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[Modified] [datetime] NULL,
[ModifiedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[LegalParty] ADD CONSTRAINT [PK_LegalParty] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LegalParty] ADD CONSTRAINT [FK_LegalParty_Industries] FOREIGN KEY ([IndustryId]) REFERENCES [dbo].[Industries] ([Id])
GO
ALTER TABLE [dbo].[LegalParty] ADD CONSTRAINT [FK_LegalParty_Region] FOREIGN KEY ([LegalPartyCityId]) REFERENCES [dbo].[Region] ([Id])
GO
