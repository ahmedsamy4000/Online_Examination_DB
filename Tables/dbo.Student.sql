CREATE TABLE [dbo].[Student]
(
[ST_ID] [int] NOT NULL,
[ST_Fname] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ST_Lname] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ST_Email] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ST_Password] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] ADD CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED ([ST_ID]) ON [PRIMARY]
GO
