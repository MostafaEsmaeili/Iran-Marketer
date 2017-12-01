CREATE TABLE [dbo].[JobPost]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Title] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[description] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[Category] [int] NULL,
[Gender] [int] NULL,
[City] [int] NULL,
[Industry] [int] NULL,
[MinAge] [int] NULL,
[MaxAge] [int] NULL,
[MinYearExperience] [int] NULL,
[PartyId] [int] NULL,
[Created] [datetime] NULL,
[CreatedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[Modified] [datetime] NULL,
[ModifiedBy] [nchar] (10) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobPost] ADD CONSTRAINT [PK_JobPost] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobPost] ADD CONSTRAINT [FK_JobPost_Industries] FOREIGN KEY ([Industry]) REFERENCES [dbo].[Industries] ([Id])
GO
ALTER TABLE [dbo].[JobPost] ADD CONSTRAINT [FK_JobPost_JobCategories] FOREIGN KEY ([Category]) REFERENCES [dbo].[JobCategories] ([Id])
GO
ALTER TABLE [dbo].[JobPost] ADD CONSTRAINT [FK_JobPost_LegalParty] FOREIGN KEY ([PartyId]) REFERENCES [dbo].[LegalParty] ([Id])
GO
ALTER TABLE [dbo].[JobPost] ADD CONSTRAINT [FK_JobPost_Region] FOREIGN KEY ([City]) REFERENCES [dbo].[Region] ([Id])
GO
