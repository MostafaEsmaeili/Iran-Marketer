CREATE TABLE [dbo].[Documents]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[DocType] [int] NOT NULL,
[DocTitle] [nvarchar] (500) COLLATE Persian_100_CI_AS NULL,
[binery] [varbinary] (max) NULL,
[Created] [datetime] NULL,
[Modified] [datetime] NULL,
[PartyId] [int] NULL,
[UserId] [nvarchar] (256) COLLATE Persian_100_CI_AS NULL,
[ModifiedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[CreatedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[Size] [int] NULL,
[Extention] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Documents] ADD CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Documents] ADD CONSTRAINT [FK_Documents_RetailParty] FOREIGN KEY ([PartyId]) REFERENCES [dbo].[RetailParty] ([Id])
GO
