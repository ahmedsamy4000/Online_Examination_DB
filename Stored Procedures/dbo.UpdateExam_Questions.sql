SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[UpdateExam_Questions] @Ex_id INT, @Q_ID INT
AS
UPDATE Exam_Questions
SET Question_ID = @Q_ID
WHERE Exam_ID=@Ex_id
GO
