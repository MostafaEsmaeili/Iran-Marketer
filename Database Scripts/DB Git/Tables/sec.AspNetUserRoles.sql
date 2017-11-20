CREATE TABLE [sec].[AspNetUserRoles]
(
[UserId] [nvarchar] (128) COLLATE Persian_100_CI_AS NOT NULL,
[RoleId] [nvarchar] (128) COLLATE Persian_100_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [sec].[AspNetUserRoles] ADD CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED  ([UserId], [RoleId]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [sec].[AspNetUserRoles] ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [sec].[AspNetRoles] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [sec].[AspNetUserRoles] ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [sec].[AspNetUsers] ([Id]) ON DELETE CASCADE
GO
