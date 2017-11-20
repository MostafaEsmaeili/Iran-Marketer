CREATE TABLE [sec].[ClientIdPRestrictions]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Provider] [nvarchar] (200) COLLATE Persian_100_CI_AS NOT NULL,
[Client_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientIdPRestrictions] ADD CONSTRAINT [PK_dbo.ClientIdPRestrictions] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[ClientIdPRestrictions] ADD CONSTRAINT [FK_dbo.ClientIdPRestrictions_dbo.Clients_Client_Id] FOREIGN KEY ([Client_Id]) REFERENCES [sec].[Clients] ([Id]) ON DELETE CASCADE
GO
