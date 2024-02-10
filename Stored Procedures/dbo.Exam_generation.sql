SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Exam_generation] @Crs_Name VARCHAR(50),@TF_num INT,@MCQ_num int
AS
Begin
CREATE TABLE #temp(q_id INT,type NVARCHAR(255))
INSERT INTO #temp
(
    q_id,
    type
)
SELECT TOP 3
Question_ID ,type
FROM dbo.Question
WHERE Type = 'MCQ'
ORDER BY NEWID();
INSERT INTO #temp
(
    q_id,
    type
)
SELECT TOP 7
Question_ID,Type
FROM dbo.Question
WHERE Type = 'TF'
ORDER BY NEWID();
SELECT * FROM #temp


DECLARE @Crs_id INT;
SELECT @Crs_id = Crs_id FROM dbo.Course WHERE Crs_name = 'OOP';
DECLARE @Exam_Grade int;
select @Exam_Grade=(@TF_num*3) + (@MCQ_num*5);


EXEC dbo.Exam_Insert '2024-02-03',60,@Crs_id,@Exam_Grade;
INSERT INTO dbo.Exam_Questions
(
    Exam_ID,
    Question_ID
)

SELECT IDENT_CURRENT('dbo.Exam'), q_id
FROM #Temp;
DROP TABLE #temp
END;
GO
