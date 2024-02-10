SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Question_Student_Answer_Report] (@Exam_ID int, @St_ID int)
as
begin
BEGIN TRY
select q.Body as 'Question', s.Student_Answer from Question q inner join Student_Exam_Question s
on q.Question_ID=s.Question_ID and s.Exam_ID=@Exam_ID and s.ST_ID=@St_ID
END TRY
BEGIN CATCH
SELECT 'NO RESULTS FOUND'
END CATCH
end
GO
