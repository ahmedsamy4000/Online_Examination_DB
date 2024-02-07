CREATE TABLE [dbo].[Exam]
(
[Exam_ID] [int] NOT NULL IDENTITY(1, 1),
[Date] [date] NULL CONSTRAINT [DF_Exam_Date] DEFAULT (getdate()),
[Duration] [int] NULL,
[Crs_ID] [int] NULL,
[Exam_Grade] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam] ADD CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED ([Exam_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam] ADD CONSTRAINT [FK_Exam_Course] FOREIGN KEY ([Crs_ID]) REFERENCES [dbo].[Course] ([Crs_ID])
GO
