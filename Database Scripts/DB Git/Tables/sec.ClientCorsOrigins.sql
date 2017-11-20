CREATE TABLE [sec].[ClientCorsOrigins]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Origin] [nvarchar] (150) COLLATE Persian_100_CI_AS NOT NULL,
[Client_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientCorsOrigins] ADD CONSTRAINT [PK_dbo.ClientCorsOrigins] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientCorsOrigins] ADD CONSTRAINT [FK_dbo.ClientCorsOrigins_dbo.Clients_Client_Id] FOREIGN KEY ([Client_Id]) REFERENCES [sec].[Clients] ([Id]) ON DELETE CASCADE
GO
