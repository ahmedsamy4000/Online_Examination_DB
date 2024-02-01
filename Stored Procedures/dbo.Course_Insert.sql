SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[Course_Insert] @cid int, @cName varchar(50),@insID int
as
	if not exists(select Crs_ID from Course where @cid = Crs_ID)	 
		insert into Course
		values(@cid,@cName,@insID)
	else
		select 'Duplicate ID'
GO
