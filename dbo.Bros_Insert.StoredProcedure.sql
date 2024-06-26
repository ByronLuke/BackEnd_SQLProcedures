USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Bros_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Bros_Insert]
@Name nvarchar(50)
,@Age int
,@Tattoos bit
,@GymName nvarchar(50)
,@Id int OUTPUT
as

Begin 

/*
Select *
from dbo.Bros


Declare @Name nvarchar(50) = 'Byron'
		,@Age int = 30
		,@Tattoos bit = 1
		,@GymName nvarchar(50) = 'Golds'
		,@Id int = 0

		Execute dbo.Bros_Insert @Name 
								,@Age 
								,@Tattoos 
								,@GymName
								,@Id OUTPUT

Select *
from dbo.Bros

*/

INSERT INTO [dbo].[Bros]
           ([Name]
           ,[Age]
           ,[Tattoos]
           ,[GymName])
     VALUES
           (@Name 
           ,@Age 
           ,@Tattoos 
           ,@GymName)
		   
		   SET @Id = SCOPE_IDENTITY()
End


GO
