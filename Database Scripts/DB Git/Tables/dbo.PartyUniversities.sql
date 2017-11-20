CREATE TABLE [dbo].[PartyUniversities]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[DegreeLevel] [int] NULL,
[AcademicFieldId] [int] NULL,
[University] [nvarchar] (300) COLLATE Persian_100_CI_AS NULL,
[CountryId] [int] NULL,
[UniversityCityId] [int] NULL,
[UniversityFromDate] [datetime] NULL,
[UniversityToDate] [datetime] NULL,
[Average] [float] NULL,
[PartyId] [int] NOT NULL,
[Created] [datetime] NULL,
[CreatedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[Modified] [datetime] NULL,
[ModifiedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PartyUniversities] ADD CONSTRAINT [PK_PartyUniversity] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PartyUniversities] ADD CONSTRAINT [FK_PartyUniversity_AcademicFields] FOREIGN KEY ([AcademicFieldId]) REFERENCES [dbo].[AcademicFields] ([Id])
GO
ALTER TABLE [dbo].[PartyUniversities] ADD CONSTRAINT [FK_PartyUniversity_Region] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[PartyUniversities] ADD CONSTRAINT [FK_PartyUniversity_Region1] FOREIGN KEY ([UniversityCityId]) REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[PartyUniversities] ADD CONSTRAINT [FK_PartyUniversity_RetailParty] FOREIGN KEY ([PartyId]) REFERENCES [dbo].[RetailParty] ([Id])
GO
