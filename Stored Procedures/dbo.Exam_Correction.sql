SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Exam_Correction] 
    @Exam_ID INT, 
    @St_ID INT
AS 
BEGIN
   DECLARE @StudentCorrectAnswersCount INT
    DECLARE @StudentGrade INT
    DECLARE @ExamGrade INT
    BEGIN TRY
        SELECT @StudentCorrectAnswersCount =COUNT(*),@StudentGrade= sum(q.Grade)
        FROM Student_Exam_Question e
        INNER JOIN Question q ON q.Model_Answer = e.Student_Answer
        WHERE e.Exam_ID = @Exam_ID AND e.ST_ID = @St_ID and e.Question_ID=q.Question_ID
		if @StudentCorrectAnswersCount = 0 
		begin
		select 'no result'
		end
		else
		begin
		select @ExamGrade =sum(Grade)  from Question q inner join Exam_Questions e
		on q.Question_ID=e.Question_ID and e.Exam_ID=@Exam_ID 
		select @StudentCorrectAnswersCount as 'num of correct answers',
		@StudentGrade as 'Student Grade',@ExamGrade as 'Exam Grade'

		update Student_Course 
		set Final_Grade=@StudentGrade
		where St_ID=@St_ID and Crs_ID=(select Crs_ID from Exam where Exam_ID=@Exam_ID)
		end
    END TRY
    BEGIN CATCH
        SELECT 'invalid_student' AS Result
    END CATCH
	
END
GO
