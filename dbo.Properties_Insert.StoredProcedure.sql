USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Properties_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Properties_Insert]

@Id int OUTPUT
,@Price int
,@Address nvarchar(500)
,@Bedrooms int
,@Bathrooms int
,@Type nvarchar(50)

as
/*
----- test code -----
Declare @Id int = 0
Declare @Price int = 450000
		,@Address nvarchar(500) = 'ADRESS4'
		,@Bedrooms int = 3
		,@Bathrooms int = 2
		,@Type nvarchar(50) = 'Apartment'

Execute dbo.Properties_Insert   @Id OUTPUT
							   ,@Price 
							   ,@Address 
							   ,@Bedrooms 
							   ,@Bathrooms 
							   ,@Type 

Select   [Id]
        ,[Price]
        ,[Address]
        ,[Bedrooms]
        ,[Bathrooms]
        ,[Type]
From dbo.Properties
*/


BEGIN

INSERT INTO [dbo].[Properties]
           ([Price]
           ,[Address]
           ,[Bedrooms]
           ,[Bathrooms]
           ,[Type])
     VALUES
           (@Price 
           ,@Address 
           ,@Bedrooms 
           ,@Bathrooms 
           ,@Type)

		   SET @Id = SCOPE_IDENTITY()

END

GO
