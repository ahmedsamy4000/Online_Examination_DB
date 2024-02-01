SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[Question_Insert] @type nvarchar(255),@grade int, @body nvarchar(255),@model_answer nvarchar(255),@cid int
as
	insert into Question(Type,Grade,Body,Model_Answer,Crs_ID)
	values(@type,@grade,@body,@model_answer,@cid)
GO
