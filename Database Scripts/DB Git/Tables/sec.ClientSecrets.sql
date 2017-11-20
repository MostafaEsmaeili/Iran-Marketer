CREATE TABLE [sec].[ClientSecrets]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Value] [nvarchar] (250) COLLATE Persian_100_CI_AS NOT NULL,
[Type] [nvarchar] (250) COLLATE Persian_100_CI_AS NULL,
[Description] [nvarchar] (2000) COLLATE Persian_100_CI_AS NULL,
[Expiration] [datetimeoffset] NULL,
[Client_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientSecrets] ADD CONSTRAINT [PK_dbo.ClientSecrets] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientSecrets] ADD CONSTRAINT [FK_dbo.ClientSecrets_dbo.Clients_Client_Id] FOREIGN KEY ([Client_Id]) REFERENCES [sec].[Clients] ([Id]) ON DELETE CASCADE
GO
