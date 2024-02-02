CREATE TABLE [dbo].[Student]
(
[St_ID] [int] NOT NULL IDENTITY(1, 1),
[ST_Fname] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ST_Lname] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ST_Email] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ST_Password] [int] NULL,
[Dept_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] ADD CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED ([St_ID]) ON [PRIMARY]
GO
