SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Course_Update] @cid int, @cName nvarchar(255),@insID int
as 
	update Course
	set Crs_name = @cName,Ins_ID = @insID
	where Crs_ID = @cid
GO
