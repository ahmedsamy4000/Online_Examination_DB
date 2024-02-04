SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Exam_Insert] @Ex_date DATE, @Ex_duration INT, @course_ID INT
AS 
BEGIN TRY
	INSERT INTO Exam(Date,Duration,Crs_ID)
	VALUES(@Ex_date, @Ex_duration,@course_ID)
END TRY 
BEGIN CATCH
	SELECT'Can not insert'
END CATCH 
GO
