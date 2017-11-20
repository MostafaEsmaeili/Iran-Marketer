CREATE TABLE [sec].[Consents]
(
[Subject] [nvarchar] (200) COLLATE Persian_100_CI_AS NOT NULL,
[ClientId] [nvarchar] (200) COLLATE Persian_100_CI_AS NOT NULL,
[Scopes] [nvarchar] (2000) COLLATE Persian_100_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[Consents] ADD CONSTRAINT [PK_dbo.Consents] PRIMARY KEY CLUSTERED  ([Subject], [ClientId]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
