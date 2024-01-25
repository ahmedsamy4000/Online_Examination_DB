CREATE TABLE [dbo].[Department]
(
[Dep_ID] [int] NOT NULL,
[Dep_name] [varchar] (255) COLLATE Latin1_General_CI_AS NULL,
[Ins_ID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [PK__Departme__0C2B45CD663DD630] PRIMARY KEY CLUSTERED ([Dep_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [FK_Department_Instructor] FOREIGN KEY ([Ins_ID]) REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
