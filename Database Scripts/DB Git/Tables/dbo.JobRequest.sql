CREATE TABLE [dbo].[JobRequest]
(
[Id] [int] NULL,
[JobPostId] [int] NULL,
[PartyId] [int] NULL,
[UserName] [nvarchar] (256) COLLATE Persian_100_CI_AS NULL,
[DateOfRequest] [datetime] NULL,
[IsRequested] [bit] NULL,
[RequestStatus] [nchar] (10) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY]
GO
