CREATE TABLE [sec].[ClientClaims]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Type] [nvarchar] (250) COLLATE Persian_100_CI_AS NOT NULL,
[Value] [nvarchar] (250) COLLATE Persian_100_CI_AS NOT NULL,
[Client_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientClaims] ADD CONSTRAINT [PK_dbo.ClientClaims] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientClaims] ADD CONSTRAINT [FK_dbo.ClientClaims_dbo.Clients_Client_Id] FOREIGN KEY ([Client_Id]) REFERENCES [sec].[Clients] ([Id]) ON DELETE CASCADE
GO
