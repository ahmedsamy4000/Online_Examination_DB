SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Course_Deletion] @cid int
as
	delete from Course
	where Crs_ID = @cid
GO
