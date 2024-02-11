SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Exam_Questions_Report] @Ex_ID INT
AS
BEGIN
    WITH ChoicesNumbered AS (
        SELECT 
            QC.Question_ID,
            QC.Choice,
            ROW_NUMBER() OVER (PARTITION BY QC.Question_ID ORDER BY (SELECT NULL)) AS ChoiceNumber
        FROM 
            Question_Choices QC
    )
    SELECT 
        EQ.Question_ID,
        Q.Body,
        MAX(CASE WHEN CN.ChoiceNumber = 1 THEN CN.Choice END) AS Choice1,
        MAX(CASE WHEN CN.ChoiceNumber = 2 THEN CN.Choice END) AS Choice2,
        MAX(CASE WHEN CN.ChoiceNumber = 3 THEN CN.Choice END) AS Choice3,
        MAX(CASE WHEN CN.ChoiceNumber = 4 THEN CN.Choice END) AS Choice4
    FROM 
        Exam_Questions EQ
    INNER JOIN 
        Question Q ON EQ.Question_ID = Q.Question_ID
    LEFT JOIN 
        ChoicesNumbered CN ON Q.Question_ID = CN.Question_ID
    WHERE 
        EQ.Exam_ID = @Ex_ID
    GROUP BY 
        EQ.Question_ID, Q.Body
END
GO
