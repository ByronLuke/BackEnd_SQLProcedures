USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Friends_Insert]

 @Title nvarchar(120)
		,@Bio nvarchar(700)
		,@Summary nvarchar(255)
		,@Headline nvarchar(80)
		,@Slug nvarchar(100)
		,@StatusId int
		,@PrimaryImageUrl nvarchar(500) 
		,@UserId int 
		,@Id int OUTPUT


/* --- TEST CODE ---

Declare @Id int = 0;

Declare @Title nvarchar(120) = 'Levi'
		,@Bio nvarchar(700) = 'Levi Bio'
		,@Summary nvarchar(255) = 'Levi Summary'
		,@Headline nvarchar(80) = 'Levi Headline'
		,@Slug nvarchar(100) = 'Levi Slug'
		,@StatusId int = '42'
		,@PrimaryImageUrl nvarchar(500) = 'https://cdn2.vectorstock.com/i/1000x1000/17/61/male-avatar-profile-picture-vector-10211761.jpg'
		,@UserId int = '42'

Execute dbo.Friends_Insert		
							 @Title
							,@Bio 
							,@Summary 
							,@Headline 
							,@Slug 
							,@StatusId 
							,@PrimaryImageUrl 
							,@UserId 
							,@Id OUTPUT

Select 
     [Title]
    ,[Bio]
    ,[Summary]
    ,[Headline]
    ,[Slug]
    ,[StatusId]
    ,[PrimaryImageUrl]
    ,[UserId]

	From [dbo].[Friends]
*/
as

BEGIN



INSERT INTO [dbo].[Friends]
           ([Title]
           ,[Bio]
           ,[Summary]
           ,[Headline]
           ,[Slug]
           ,[StatusId]
           ,[PrimaryImageUrl]
           ,[UserId])
     VALUES
           (@Title
           ,@Bio
           ,@Summary
           ,@Headline
           ,@Slug
           ,@StatusId
           ,@PrimaryImageUrl
           ,@UserId)

		   SET @Id = SCOPE_IDENTITY()

		   

		   

END
GO
