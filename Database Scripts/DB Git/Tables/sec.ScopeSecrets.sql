CREATE TABLE [sec].[ScopeSecrets]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Description] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[Expiration] [datetimeoffset] NULL,
[Type] [nvarchar] (250) COLLATE Persian_100_CI_AS NULL,
[Value] [nvarchar] (250) COLLATE Persian_100_CI_AS NOT NULL,
[Scope_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ScopeSecrets] ADD CONSTRAINT [PK_dbo.ScopeSecrets] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ScopeSecrets] ADD CONSTRAINT [FK_dbo.ScopeSecrets_dbo.Scopes_Scope_Id] FOREIGN KEY ([Scope_Id]) REFERENCES [sec].[Scopes] ([Id]) ON DELETE CASCADE
GO
