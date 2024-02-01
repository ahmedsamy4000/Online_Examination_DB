SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[Course_Insert]  @cName varchar(50),@insID int
as
	insert into Course
	values(@cName,@insID)
GO
