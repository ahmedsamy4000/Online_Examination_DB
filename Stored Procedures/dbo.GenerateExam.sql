SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create PROC [dbo].[GenerateExam] @name varchar(10), @mcq int, @tf int
AS

DECLARE @newid INT, @qid INT , @qidd INT, @crsID INT , @grade int
SET @crsid = (SELECT Crs_ID FROM dbo.Course WHERE Crs_name = @name)
set @grade = (@mcq * 3) + (@tf)
CREATE TABLE #ques (eid INT , qid INT PRIMARY KEY (eid,qid))


IF EXISTS (SELECT TOP 1 Exam_Id FROM dbo.Exam)
	BEGIN
		SET @newid = (SELECT TOP 1 Exam_Id FROM dbo.Exam ORDER BY Exam_Id DESC) +1
	END
ELSE
	BEGIN
		SET @newid = 1
	END

DECLARE @n int = 0
WHILE @n < @mcq
BEGIN
	
	SET @qid = (SELECT TOP 1 Question_ID FROM dbo.Question
		JOIN dbo.Course ON Course.Crs_ID = Question.Crs_ID
		WHERE @name = Crs_name AND Type = 'MCQ'
		ORDER BY NEWID())

	BEGIN TRY
		INSERT INTO #ques
		(
		    eid,
		    qid
		)
		VALUES
		(   @newid,
			@qid
		    )
		SET @n = @n + 1
	END TRY
	BEGIN CATCH
	END CATCH
End	

DECLARE @m int = 0
WHILE @m < @tf
BEGIN
	
	SET @qidd = (SELECT TOP 1 Question_ID FROM dbo.Question
		JOIN dbo.Course ON Course.Crs_ID = Question.Crs_ID
		WHERE @name = Crs_name AND Type = 'TF'
		ORDER BY NEWID())

	BEGIN TRY
		INSERT INTO #ques
		(
		    eid,
		    qid
		)
		VALUES
		(   @newid,
			@qidd
		    )
		SET @m = @m + 1
	END TRY
	BEGIN CATCH
	END CATCH
End	

DECLARE @d DATE = GETDATE()

Exec dbo.Exam_Insert @d, 1, @crsID, @grade

INSERT INTO dbo.Exam_Questions SELECT * FROM #ques
DROP TABLE #ques
GO
