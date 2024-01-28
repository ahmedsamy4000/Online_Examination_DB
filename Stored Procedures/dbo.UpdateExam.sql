SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[UpdateExam] @Ex_id INT, @Ex_date DATE, @Ex_duration INT, @course_ID INT
AS
UPDATE Exam
SET Date = @Ex_date, Duration=@Ex_duration, Crs_ID=@course_ID
WHERE Exam_ID=@Ex_id
GO
