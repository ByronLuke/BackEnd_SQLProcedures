USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[RestaurantV2_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RestaurantV2_Insert]

@Id int Output
,@RestaurantName nvarchar(50)
,@Region nvarchar(50)
,@ChefName nvarchar(50)

as

/*
Select *
from dbo.Restaurants

Declare @Id int =0
		,@RestaurantName nvarchar(50) = 'Byrons BBQ Joint'
		,@Region nvarchar(50) = 'West Texas'
		,@ChefName nvarchar(50) = 'Alejandro Pentoja'

Execute dbo.RestaurantV2_Insert @Id  Output
								,@RestaurantName 
								,@Region 
								,@ChefName 

Select *
from dbo.Restaurants

*/

begin

INSERT INTO dbo.Chefs
           (ChefName)
     VALUES
           (@ChefName)

		   Declare @ChefId int  = SCOPE_IDENTITY()

INSERT INTO [dbo].[Restaurants]
           ([RestaurantName]
           ,[Region]
           ,[ChefId])
     VALUES
           (@RestaurantName
           ,@Region
           ,@ChefId)

		   SET @Id = SCOPE_IDENTITY()
end

GO
