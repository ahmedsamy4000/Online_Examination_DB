SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Question_Deletion] @qid int
as
	delete from Question
	where Question_ID = @qid
GO
