CREATE TABLE [sec].[ClientPostLogoutRedirectUris]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Uri] [nvarchar] (2000) COLLATE Persian_100_CI_AS NOT NULL,
[Client_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientPostLogoutRedirectUris] ADD CONSTRAINT [PK_dbo.ClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientPostLogoutRedirectUris] ADD CONSTRAINT [FK_dbo.ClientPostLogoutRedirectUris_dbo.Clients_Client_Id] FOREIGN KEY ([Client_Id]) REFERENCES [sec].[Clients] ([Id]) ON DELETE CASCADE
GO
