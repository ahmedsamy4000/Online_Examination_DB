CREATE TABLE [dbo].[Instructor]
(
[Ins_ID] [int] NOT NULL IDENTITY(6, 1),
[Ins_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dept_Id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Instructor] ADD CONSTRAINT [PK__Instruct__151409CD278D14C9] PRIMARY KEY CLUSTERED ([Ins_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Instructor] ADD CONSTRAINT [FK_Instructor_Department] FOREIGN KEY ([Dept_Id]) REFERENCES [dbo].[Department] ([Dep_ID])
GO
