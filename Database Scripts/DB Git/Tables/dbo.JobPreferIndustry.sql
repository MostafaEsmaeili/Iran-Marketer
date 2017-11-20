CREATE TABLE [dbo].[JobPreferIndustry]
(
[JobPreferId] [int] NOT NULL,
[IndustryId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobPreferIndustry] ADD CONSTRAINT [PK_JobPreferIndustry] PRIMARY KEY CLUSTERED  ([JobPreferId], [IndustryId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobPreferIndustry] ADD CONSTRAINT [FK_JobPreferIndustry_Industries] FOREIGN KEY ([IndustryId]) REFERENCES [dbo].[Industries] ([Id])
GO
ALTER TABLE [dbo].[JobPreferIndustry] ADD CONSTRAINT [FK_JobPreferIndustry_JobPrefer] FOREIGN KEY ([JobPreferId]) REFERENCES [dbo].[JobPrefer] ([Id])
GO
