CREATE TABLE [dbo].[Region]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Title] [nvarchar] (250) COLLATE Persian_100_CI_AS NULL,
[EnTitle] [nvarchar] (250) COLLATE Persian_100_CI_AS NULL,
[CodeId] [nvarchar] (20) COLLATE Persian_100_CI_AS NULL,
[RegionType] [int] NULL,
[ZipCode] [nvarchar] (20) COLLATE Persian_100_CI_AS NULL,
[ValidFrom] [date] NULL,
[ValidUntil] [date] NULL,
[CreatedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[ModifiedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Region] ADD CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
