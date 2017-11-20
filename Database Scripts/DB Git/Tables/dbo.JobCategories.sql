CREATE TABLE [dbo].[JobCategories]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[TitleFa] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[TitleEn] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[Created] [datetime] NULL,
[CreatedBy] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[Modified] [datetime] NULL,
[ModifiedBy] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobCategories] ADD CONSTRAINT [PK_JobCategories] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
