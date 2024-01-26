SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Question_Insertion] @qid int,@type nvarchar(255),@grade int, @body nvarchar(255),@model_answer nvarchar(255),@cid int
as
	insert into Question
	values(@qid,@type,@grade,@body,@model_answer,@cid)
GO
