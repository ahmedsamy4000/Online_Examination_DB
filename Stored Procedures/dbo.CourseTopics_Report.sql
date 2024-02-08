SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CourseTopics_Report] 
    @crs_id INT
AS
BEGIN  
    IF NOT EXISTS (SELECT 1 FROM course WHERE Crs_ID = @crs_id)
    BEGIN
        select 'not valid course ID '
        RETURN
    END
    SELECT topic_name
    FROM topic t
    INNER JOIN course c ON c.Crs_ID = t.Crs_ID
    WHERE c.Crs_ID = @crs_id
END
GO
