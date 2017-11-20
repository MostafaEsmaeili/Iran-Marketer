CREATE TABLE [sec].[ScopeClaims]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (200) COLLATE Persian_100_CI_AS NOT NULL,
[Description] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[AlwaysIncludeInIdToken] [bit] NOT NULL,
[Scope_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ScopeClaims] ADD CONSTRAINT [PK_dbo.ScopeClaims] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ScopeClaims] ADD CONSTRAINT [FK_dbo.ScopeClaims_dbo.Scopes_Scope_Id] FOREIGN KEY ([Scope_Id]) REFERENCES [sec].[Scopes] ([Id]) ON DELETE CASCADE
GO
