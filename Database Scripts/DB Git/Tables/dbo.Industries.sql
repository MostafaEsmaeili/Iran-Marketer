CREATE TABLE [dbo].[Industries]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[TitleFa] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[TitleEn] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[Created] [datetime] NULL,
[CreatedBy] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[Modified] [datetime] NULL,
[ModifiedBy] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Industries] ADD CONSTRAINT [PK_Industries] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
