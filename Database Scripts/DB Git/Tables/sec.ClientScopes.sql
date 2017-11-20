CREATE TABLE [sec].[ClientScopes]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Scope] [nvarchar] (200) COLLATE Persian_100_CI_AS NOT NULL,
[Client_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientScopes] ADD CONSTRAINT [PK_dbo.ClientScopes] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientScopes] ADD CONSTRAINT [FK_dbo.ClientScopes_dbo.Clients_Client_Id] FOREIGN KEY ([Client_Id]) REFERENCES [sec].[Clients] ([Id]) ON DELETE CASCADE
GO
