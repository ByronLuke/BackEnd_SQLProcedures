USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Books_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Books_Insert]

@Title nvarchar(100)
,@Author nvarchar(100)
,@Genre nvarchar(100)
,@YearReleased int 
,@Id int OUTPUT

as

/*

Declare @Id int = 0
		,@Title nvarchar(100) = 'The Picture of Dorian Grey'
		,@Author nvarchar(100) = 'Oscar Wilde'
		,@Genre nvarchar(100) = 'Dark Fantasy'
		,@YearReleased int = 1891

Execute dbo.Books_Insert @Title
						,@Author
						,@Genre
						,@YearReleased 
						,@Id OUTPUT
Select *
from dbo.Books	   

*/

BEGIN 

INSERT INTO [dbo].[Books]
          ([Title]
          ,[Author]
          ,[Genre]
          ,[YearReleased])
    VALUES
          (@Title 
          ,@Author 
          ,@Genre 
          ,@YearReleased)

		  SET @Id = SCOPE_IDENTITY()

END

GO
