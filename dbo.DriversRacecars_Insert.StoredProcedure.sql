USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[DriversRacecars_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DriversRacecars_Insert]

@Model nvarchar(50)
           ,@Make nvarchar(50)
           ,@Year int
		   ,@FirstName nvarchar(50)
           ,@LastName nvarchar(50)
           ,@Age nvarchar(50)
		   ,@Id int OUTPUT
as

/*

Declare @Model nvarchar(50) = 'Ferrari'
           ,@Make nvarchar(50) = 'Spyder'
           ,@Year int = '2021' 
		   ,@FirstName nvarchar(50) = 'Ronald'
           ,@LastName nvarchar(50) = 'Hays'
           ,@Age nvarchar(50) = '28'
		   ,@Id int = 0

Execute dbo.Drivers_Racecars_Insert
		@Model 
           ,@Make 
           ,@Year 
		   ,@FirstName 
           ,@LastName 
           ,@Age 
		   ,@Id OUTPUT
*/
BEGIN

INSERT INTO [dbo].[Racecars]
           ([Model]
           ,[Make]
           ,[Year])
     VALUES
           (@Model 
           ,@Make 
           ,@Year)

		   SET @Id = SCOPE_IDENTITY()

INSERT INTO [dbo].[Drivers]
           ([FirstName]
           ,[LastName]
           ,[Age]
           ,[CardId])
     VALUES
           (@FirstName 
           ,@LastName 
           ,@Age
           ,@Id)

		   SET @Id = SCOPE_IDENTITY()

END

GO
