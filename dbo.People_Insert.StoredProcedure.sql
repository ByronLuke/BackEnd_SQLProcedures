USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[People_Insert]

 @PersonName nvarchar(50) 
		,@Age int
		,@UserId nvarchar(128)
		,@IsASmoker bit 
		,@Id int OUTPUT

/*

--------- Test Code ---------

Declare @Id int =0;

Declare @PersonName nvarchar(50) = 'James'
		,@Age int = 29
		,@UserId nvarchar(128)='128ed'
		,@IsASmoker bit = 0

		
Declare @Id int = 0;

Declare @PersonName nvarchar(50) = 'Paul'
		,@Age int = 29
		,@UserId nvarchar(128)='128drfed'
		,@IsASmoker bit = 0

		Execute dbo.People_Insert 
										@PersonName,
										@Age,
										@UserId,
										@IsASmoker,
										@Id

										
Declare @Id int = 0;

Declare @PersonName nvarchar(50) = 'Fred'
		,@Age int = 87
		,@UserId nvarchar(128)='128crreedrfedcr'
		,@IsASmoker bit = 0

		Execute dbo.People_Insert 
										@PersonName,
										@Age,
										@UserId,
										@IsASmoker,
										@Id OUTPUT


Select *
From dbo.People
where Id = @Id


*/

as

BEGIN




INSERT INTO [dbo].[People]
           ([Name]
           ,[Age]
           ,[IsSmoker]
           ,[UserId])
     VALUES
           (@PersonName
           ,@Age
           ,@IsASmoker
           ,@UserId)

		   SET @Id= SCOPE_IDENTITY()

	


END


--Declare @Id int =0;

--Declare @PersonName nvarchar(50) = 'James'
--		,@Age int = 29
--		,@UserId nvarchar(128)='128ed'
--		,@IsASmoker bit = 0
GO
