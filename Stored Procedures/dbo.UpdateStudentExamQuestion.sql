SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[UpdateStudentExamQuestion]
    @ST_ID INT,
    @Question_ID INT,
    @Exam_ID INT,
    @Student_Answer VARCHAR(100)
AS
BEGIN
    UPDATE Student_Exam_Question
    SET Student_Answer = @Student_Answer
    WHERE ST_ID = @ST_ID AND Question_ID = @Question_ID AND Exam_ID = @Exam_ID
END
GO
