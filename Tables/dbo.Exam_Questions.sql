CREATE TABLE [dbo].[Exam_Questions]
(
[Exam_ID] [int] NOT NULL,
[Question_ID] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam_Questions] ADD CONSTRAINT [PK_Exam_Questions] PRIMARY KEY CLUSTERED ([Exam_ID], [Question_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam_Questions] ADD CONSTRAINT [FK_Exam_Questions_Exam] FOREIGN KEY ([Exam_ID]) REFERENCES [dbo].[Exam] ([Exam_ID])
GO
ALTER TABLE [dbo].[Exam_Questions] ADD CONSTRAINT [FK_Exam_Questions_Question] FOREIGN KEY ([Question_ID]) REFERENCES [dbo].[Question] ([Question_ID])
GO
