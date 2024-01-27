SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeleteStudentExamQuestion]
    @ST_ID INT,
    @Question_ID INT
AS
BEGIN
    DELETE FROM Student_Exam_Question
    WHERE ST_ID = @ST_ID AND Question_ID = @Question_ID
END
GO
