USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Owner_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Owner_Insert]

@Age int
,@FirstName nvarchar(50)
,@LastName nvarchar(50)
,@HouseId int
,@Id int OUTPUT

as

Begin

/*

Select *
from dbo.Owner

Declare  @Age int = 62
		,@FirstName nvarchar(50) = 'Harold'
		,@LastName nvarchar(50) = 'Wellington'
		,@HouseId int = 3
		,@Id int = 0 

Execute dbo.Owner_Insert @Age
           ,@FirstName 
           ,@LastName 
           ,@HouseId
		   ,@Id OUTPUT

Select *
from dbo.Owner

*/

INSERT INTO [dbo].[Owner]
           ([Age]
           ,[FirstName]
           ,[LastName]
           ,[HouseId]
)
     VALUES
           (@Age
           ,@FirstName 
           ,@LastName 
           ,@HouseId)
		   
		   SET @Id= SCOPE_IDENTITY()
End


GO
