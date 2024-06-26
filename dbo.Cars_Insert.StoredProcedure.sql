USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Cars_Insert]

@Make nvarchar(50)
,@Model nvarchar(50)
,@Year int
,@IsUsed bit
,@ManufacturerId int
,@Id int OUTPUT

as

/*
TEST CODE

Select * 
from dbo.cars

Declare @Make nvarchar(50) = 'Mclaren'
		,@Model nvarchar(50) = 'R8'
		,@Year int = 2024
		,@IsUsed bit = 1
		,@ManufacturerId int = 1
		,@Id int = 1

Execute dbo.Cars_Insert @Make 
						,@Model 
						,@Year 
						,@IsUsed 
						,@ManufacturerId 
						,@Id OUTPUT

Select * 
from dbo.cars
*/
BEGIN

INSERT INTO [dbo].[Cars]
           ([Make]
           ,[Model]
           ,[Year]
           ,[IsUsed]
           ,[ManufacturerId])
     VALUES
           (@Make
           ,@Model 
           ,@Year 
           ,@IsUsed 
           ,@ManufacturerId)

		   SET @Id = SCOPE_IDENTITY()
END

GO
