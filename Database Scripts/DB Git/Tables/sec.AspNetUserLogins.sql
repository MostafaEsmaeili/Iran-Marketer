CREATE TABLE [sec].[AspNetUserLogins]
(
[LoginProvider] [nvarchar] (128) COLLATE Persian_100_CI_AS NOT NULL,
[ProviderKey] [nvarchar] (128) COLLATE Persian_100_CI_AS NOT NULL,
[UserId] [nvarchar] (128) COLLATE Persian_100_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[AspNetUserLogins] ADD CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED  ([LoginProvider], [ProviderKey], [UserId]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[AspNetUserLogins] ADD CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [sec].[AspNetUsers] ([Id]) ON DELETE CASCADE
GO
