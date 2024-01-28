SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[insertIntoExam] @Ex_id INT, @Ex_date DATE, @Ex_duration INT, @course_ID INT
AS 
INSERT INTO Exam
VALUES(@Ex_id,@Ex_date, @Ex_duration,@course_ID)
GO
