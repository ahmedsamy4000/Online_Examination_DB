SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Exam_Questions_Delete] @Ex_id INT
AS
BEGIN TRY 
	DELETE FROM Exam_Questions
	WHERE Exam_ID = @Ex_id
END TRY 
BEGIN CATCH
 SELECT 'Deletion failed'
END CATCH 
GO
