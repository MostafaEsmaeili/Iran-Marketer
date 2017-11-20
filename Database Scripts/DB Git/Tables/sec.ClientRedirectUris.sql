CREATE TABLE [sec].[ClientRedirectUris]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Uri] [nvarchar] (2000) COLLATE Persian_100_CI_AS NOT NULL,
[Client_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientRedirectUris] ADD CONSTRAINT [PK_dbo.ClientRedirectUris] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientRedirectUris] ADD CONSTRAINT [FK_dbo.ClientRedirectUris_dbo.Clients_Client_Id] FOREIGN KEY ([Client_Id]) REFERENCES [sec].[Clients] ([Id]) ON DELETE CASCADE
GO
