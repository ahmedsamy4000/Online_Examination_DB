SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Exam_Insert] @Ex_date DATE, @Ex_duration INT, @course_ID INT, @Ex_Grade INT
AS 
BEGIN TRY
	INSERT INTO Exam(Date,Duration,Crs_ID,Exam_Grade)
	VALUES(@Ex_date, @Ex_duration,@course_ID,@Ex_Grade)
END TRY 
BEGIN CATCH
	SELECT'Can not insert'
END CATCH 
GO
