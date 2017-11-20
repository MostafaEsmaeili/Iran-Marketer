CREATE TABLE [dbo].[Logs]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[EventDateTime] [datetime] NOT NULL,
[EventLevel] [nvarchar] (100) COLLATE Persian_100_CI_AS NOT NULL,
[UserName] [nvarchar] (100) COLLATE Persian_100_CI_AS NOT NULL,
[MachineName] [nvarchar] (100) COLLATE Persian_100_CI_AS NOT NULL,
[EventMessage] [nvarchar] (max) COLLATE Persian_100_CI_AS NOT NULL,
[ErrorSource] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[ErrorClass] [nvarchar] (500) COLLATE Persian_100_CI_AS NULL,
[ErrorMethod] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[InnerErrorMessage] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Logs] ADD CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
