SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Instructor_Courses_Report] @ins_id int
as
select dbo.Course.Crs_name as 'Course Name' , count(dbo.Student_Course.St_ID) as 'Students Count'
from dbo.Course
inner join dbo.Student_Course on dbo.Course.Crs_ID = dbo.Student_Course.Crs_ID
where dbo.Course.Ins_ID = @ins_id
group by dbo.Course.Crs_name
GO
