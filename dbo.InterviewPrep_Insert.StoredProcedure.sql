USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[InterviewPrep_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[InterviewPrep_Insert]

@Topic nvarchar(500)
,@Question nvarchar(500)
,@Answer nvarchar(500)
,@Id int OUTPUT

as

Begin

INSERT INTO [dbo].[InterviewPrep]
           ([Topic]
           ,[Question]
           ,[Answer])
     VALUES
           (@Topic 
           ,@Question 
           ,@Answer)
		   SET @ID = SCOPE_IDENTITY()

End


GO
