USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Customers_Insert]

@Age int
,@FirstName nvarchar(50)
,@LastName nvarchar(50)
,@RegionId int
,@LoyaltyMember bit
,@Id int OUTPUT

as

/*

Select *
from dbo.Customers

Declare @Age int = 32
		,@FirstName nvarchar(50) = 'Helen'
		,@LastName nvarchar(50) = 'Livingston'
		,@RegionId int = 2
		,@LoyaltyMember bit = 1
		,@Id int = 0

Execute dbo.Customers_Insert @Age
           ,@FirstName
           ,@LastName
           ,@RegionId 
           ,@LoyaltyMember
		   ,@Id

Select *
from dbo.Customers


*/
Begin

INSERT INTO [dbo].[Customers]
           ([Age]
           ,[FirstName]
           ,[LastName]
           ,[RegionId]
           ,[LoyaltyMember])
     VALUES
           (@Age
           ,@FirstName
           ,@LastName
           ,@RegionId 
           ,@LoyaltyMember)

		   SET @Id = SCOPE_IDENTITY()
End


GO
