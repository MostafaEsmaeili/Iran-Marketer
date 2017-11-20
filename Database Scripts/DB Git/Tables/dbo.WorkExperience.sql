CREATE TABLE [dbo].[WorkExperience]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[PartyId] [int] NOT NULL,
[JobTitle] [nvarchar] (500) COLLATE Persian_100_CI_AS NULL,
[JobCategoryId] [int] NULL,
[CompanyName] [nvarchar] (500) COLLATE Persian_100_CI_AS NULL,
[IndustryId] [int] NULL,
[CountryId] [int] NULL,
[JobCityId] [int] NULL,
[FromDate] [datetime] NULL,
[ToDate] [datetime] NULL,
[Achievements] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[StillInThisWork] [bit] NULL,
[Created] [datetime] NULL,
[Modified] [datetime] NULL,
[CreatedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[ModifiedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkExperience] ADD CONSTRAINT [PK_WorkExperience] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkExperience] ADD CONSTRAINT [FK_WorkExperience_Industries] FOREIGN KEY ([IndustryId]) REFERENCES [dbo].[Industries] ([Id])
GO
ALTER TABLE [dbo].[WorkExperience] ADD CONSTRAINT [FK_WorkExperience_JobCategories] FOREIGN KEY ([JobCategoryId]) REFERENCES [dbo].[JobCategories] ([Id])
GO
ALTER TABLE [dbo].[WorkExperience] ADD CONSTRAINT [FK_WorkExperience_Region] FOREIGN KEY ([JobCityId]) REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[WorkExperience] ADD CONSTRAINT [FK_WorkExperience_RetailParty] FOREIGN KEY ([PartyId]) REFERENCES [dbo].[RetailParty] ([Id])
GO
