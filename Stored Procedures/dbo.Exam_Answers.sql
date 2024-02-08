SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[Exam_Answers] @t exam_answers READONLY
AS
INSERT INTO Student_Exam_Question SELECT * FROM @t
GO
