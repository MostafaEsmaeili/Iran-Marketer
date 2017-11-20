CREATE TABLE [dbo].[JobPreferJobCategory]
(
[JobPreferId] [int] NOT NULL,
[jobCategoryId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobPreferJobCategory] ADD CONSTRAINT [PK_JobPreferJobCategory] PRIMARY KEY CLUSTERED  ([JobPreferId], [jobCategoryId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobPreferJobCategory] ADD CONSTRAINT [FK_JobPreferJobCategory_JobCategories] FOREIGN KEY ([jobCategoryId]) REFERENCES [dbo].[JobCategories] ([Id])
GO
ALTER TABLE [dbo].[JobPreferJobCategory] ADD CONSTRAINT [FK_JobPreferJobCategory_JobPrefer] FOREIGN KEY ([JobPreferId]) REFERENCES [dbo].[JobPrefer] ([Id])
GO
