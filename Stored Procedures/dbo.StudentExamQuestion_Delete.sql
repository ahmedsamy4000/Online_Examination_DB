SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[StudentExamQuestion_Delete]
    @ST_ID INT,
    @Question_ID INT
AS IF EXISTS (SELECT * FROM dbo.Student_Exam_Question WHERE ST_ID=@ST_ID AND Question_ID=@Question_ID)
BEGIN
    DELETE FROM Student_Exam_Question
    WHERE ST_ID = @ST_ID AND Question_ID = @Question_ID
END
ELSE BEGIN
         SELECT'can not be deleted  '
     END
GO
