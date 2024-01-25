CREATE TABLE [dbo].[Instructor]
(
[Ins_ID] [int] NOT NULL,
[Ins_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dep_ID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Instructor] ADD CONSTRAINT [PK__Instruct__151409CD278D14C9] PRIMARY KEY CLUSTERED ([Ins_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Instructor] ADD CONSTRAINT [FK__Instructo__Dep_I__3C69FB99] FOREIGN KEY ([Dep_ID]) REFERENCES [dbo].[Department] ([Dep_ID])
GO
