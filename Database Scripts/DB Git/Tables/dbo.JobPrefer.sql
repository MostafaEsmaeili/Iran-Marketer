CREATE TABLE [dbo].[JobPrefer]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ExpectedSalary] [int] NULL,
[BusinessTrips] [int] NULL,
[Relocate] [int] NULL,
[PartyId] [int] NOT NULL,
[Created] [datetime] NULL,
[CreatedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[Modified] [datetime] NULL,
[ModifiedBy] [nchar] (10) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobPrefer] ADD CONSTRAINT [PK_JobPrefer] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobPrefer] ADD CONSTRAINT [FK_JobPrefer_RetailParty] FOREIGN KEY ([PartyId]) REFERENCES [dbo].[RetailParty] ([Id])
GO
