CREATE TABLE [dbo].[AcademicFields]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[TitleEn] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[TitleFa] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[Created] [datetime] NULL,
[CreatedBy] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[Modified] [datetime] NULL,
[ModifiedBy] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AcademicFields] ADD CONSTRAINT [PK_AcademicFields] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
