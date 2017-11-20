CREATE TABLE [sec].[Scopes]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Enabled] [bit] NOT NULL,
[Name] [nvarchar] (200) COLLATE Persian_100_CI_AS NOT NULL,
[DisplayName] [nvarchar] (200) COLLATE Persian_100_CI_AS NULL,
[Description] [nvarchar] (1000) COLLATE Persian_100_CI_AS NULL,
[Required] [bit] NOT NULL,
[Emphasize] [bit] NOT NULL,
[Type] [int] NOT NULL,
[IncludeAllClaimsForUser] [bit] NOT NULL,
[ClaimsRule] [nvarchar] (200) COLLATE Persian_100_CI_AS NULL,
[ShowInDiscoveryDocument] [bit] NOT NULL,
[AllowUnrestrictedIntrospection] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[Scopes] ADD CONSTRAINT [PK_dbo.Scopes] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
