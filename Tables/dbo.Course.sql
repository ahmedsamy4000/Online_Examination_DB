CREATE TABLE [dbo].[Course]
(
[Crs_ID] [int] NOT NULL,
[Crs_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ins_ID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course] ADD CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED ([Crs_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course] ADD CONSTRAINT [FK_Course_Instructor] FOREIGN KEY ([Ins_ID]) REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
