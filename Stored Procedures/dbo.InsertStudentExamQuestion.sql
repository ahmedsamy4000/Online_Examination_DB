SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[InsertStudentExamQuestion]
    @ST_ID INT,
    @Question_ID INT,
    @Exam_ID INT,
    @Student_Answer VARCHAR(100)
AS
BEGIN
    INSERT INTO Student_Exam_Question (ST_ID, Question_ID, Exam_ID, Student_Answer)
    VALUES (@ST_ID, @Question_ID, @Exam_ID, @Student_Answer)
END
GO
