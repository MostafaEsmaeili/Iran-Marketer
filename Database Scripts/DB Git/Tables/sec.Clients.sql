CREATE TABLE [sec].[Clients]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Enabled] [bit] NOT NULL,
[ClientId] [nvarchar] (200) COLLATE Persian_100_CI_AS NOT NULL,
[ClientName] [nvarchar] (200) COLLATE Persian_100_CI_AS NOT NULL,
[ClientUri] [nvarchar] (2000) COLLATE Persian_100_CI_AS NULL,
[LogoUri] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[RequireConsent] [bit] NOT NULL,
[AllowRememberConsent] [bit] NOT NULL,
[AllowAccessTokensViaBrowser] [bit] NOT NULL,
[Flow] [int] NOT NULL,
[AllowClientCredentialsOnly] [bit] NOT NULL,
[LogoutUri] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[LogoutSessionRequired] [bit] NOT NULL,
[RequireSignOutPrompt] [bit] NOT NULL,
[AllowAccessToAllScopes] [bit] NOT NULL,
[IdentityTokenLifetime] [int] NOT NULL,
[AccessTokenLifetime] [int] NOT NULL,
[AuthorizationCodeLifetime] [int] NOT NULL,
[AbsoluteRefreshTokenLifetime] [int] NOT NULL,
[SlidingRefreshTokenLifetime] [int] NOT NULL,
[RefreshTokenUsage] [int] NOT NULL,
[UpdateAccessTokenOnRefresh] [bit] NOT NULL,
[RefreshTokenExpiration] [int] NOT NULL,
[AccessTokenType] [int] NOT NULL,
[EnableLocalLogin] [bit] NOT NULL,
[IncludeJwtId] [bit] NOT NULL,
[AlwaysSendClientClaims] [bit] NOT NULL,
[PrefixClientClaims] [bit] NOT NULL,
[AllowAccessToAllGrantTypes] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [sec].[Clients] ADD CONSTRAINT [PK_dbo.Clients] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
