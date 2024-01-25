CREATE TABLE [dbo].[Topic]
(
[Topic_ID] [int] NOT NULL,
[Topic_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Crs_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Topic] ADD CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([Topic_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Topic] ADD CONSTRAINT [FK_Topic_Course] FOREIGN KEY ([Crs_ID]) REFERENCES [dbo].[Course] ([Crs_ID])
GO
