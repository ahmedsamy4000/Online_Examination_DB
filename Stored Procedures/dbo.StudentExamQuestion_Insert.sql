SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[StudentExamQuestion_Insert]
    @ST_ID INT,
    @Question_ID INT,
    @Exam_ID INT,
    @Student_Answer VARCHAR(100)
AS
 BEGIN TRY 
    INSERT INTO Student_Exam_Question (ST_ID, Question_ID, Exam_ID, Student_Answer)
    VALUES (@ST_ID, @Question_ID, @Exam_ID, @Student_Answer)
END TRY
BEGIN CATCH 
SELECT 'Enter a valid data'
END CATCH
GO
