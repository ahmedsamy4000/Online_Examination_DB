CREATE TABLE [dbo].[Student_Exam_Question]
(
[ST_ID] [int] NOT NULL,
[Question_ID] [float] NOT NULL,
[Exam_ID] [int] NOT NULL,
[Student_Answer] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student_Exam_Question] ADD CONSTRAINT [PK_Student_Exam_Question] PRIMARY KEY CLUSTERED ([ST_ID], [Question_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student_Exam_Question] ADD CONSTRAINT [FK_Student_Exam_Question_Exam] FOREIGN KEY ([Exam_ID]) REFERENCES [dbo].[Exam] ([Exam_ID])
GO
ALTER TABLE [dbo].[Student_Exam_Question] ADD CONSTRAINT [FK_Student_Exam_Question_Question] FOREIGN KEY ([Question_ID]) REFERENCES [dbo].[Question] ([Question_ID])
GO
ALTER TABLE [dbo].[Student_Exam_Question] ADD CONSTRAINT [FK_Student_Exam_Question_Student] FOREIGN KEY ([ST_ID]) REFERENCES [dbo].[Student] ([ST_ID])
GO
