USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Courses_Insert]

@Name nvarchar(200)
           ,@Description nvarchar(200)
           ,@SeasonTermId int
           ,@TeacherId int
		   ,@Id int OUTPUT

as


/*
Select *
from dbo.Courses

Declare @Name nvarchar(200) = 'New Course'
        ,@Description nvarchar(200) = 'Pending Descrip.'
        ,@SeasonTermId int = 3
        ,@TeacherId int = 2
		,@ID int = 0

Execute dbo.Courses_Insert @Name
						   ,@Description 
						   ,@SeasonTermId 
						   ,@TeacherId 
						   ,@Id

Select *
from dbo.Courses

*/
Begin

INSERT INTO [dbo].[Courses]
           ([Name]
           ,[Description]
           ,[SeasonTermId]
           ,[TeacherId])
     VALUES
           (@Name
           ,@Description 
           ,@SeasonTermId 
           ,@TeacherId )
		   SET @Id = SCOPE_IDENTITY()
End


GO
