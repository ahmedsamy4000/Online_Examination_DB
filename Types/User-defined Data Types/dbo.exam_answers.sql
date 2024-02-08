CREATE TYPE [dbo].[exam_answers] AS TABLE
(
[st_id] [int] NOT NULL,
[q_id] [int] NOT NULL,
[ex_id] [int] NULL,
[st_ans] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
PRIMARY KEY CLUSTERED ([st_id], [q_id])
)
GO
