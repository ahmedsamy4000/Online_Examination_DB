CREATE TABLE [dbo].[Exam]
(
[Exam_ID] [int] NOT NULL IDENTITY(3, 1),
[Date] [date] NULL,
[Duration] [int] NULL,
[Crs_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam] ADD CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED ([Exam_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam] ADD CONSTRAINT [FK_Exam_Course] FOREIGN KEY ([Crs_ID]) REFERENCES [dbo].[Course] ([Crs_ID])
GO
