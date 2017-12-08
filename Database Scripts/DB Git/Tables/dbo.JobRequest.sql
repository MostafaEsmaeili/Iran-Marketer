CREATE TABLE [dbo].[JobRequest]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[JobPostId] [int] NULL,
[PartyId] [int] NULL,
[UserName] [nvarchar] (256) COLLATE Persian_100_CI_AS NULL,
[DateOfRequest] [datetime] NULL,
[IsRequested] [bit] NULL,
[RequestStatus] [int] NULL,
[Created] [datetime] NULL,
[CreatedBy] [nvarchar] (50) COLLATE Persian_100_CI_AS NULL,
[Modified] [datetime] NULL,
[ModifiedBy] [nchar] (10) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobRequest] ADD CONSTRAINT [PK_JobRequest] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobRequest] ADD CONSTRAINT [FK_JobRequest_JobPost] FOREIGN KEY ([JobPostId]) REFERENCES [dbo].[JobPost] ([Id])
GO
ALTER TABLE [dbo].[JobRequest] ADD CONSTRAINT [FK_JobRequest_RetailParty] FOREIGN KEY ([PartyId]) REFERENCES [dbo].[RetailParty] ([Id])
GO
