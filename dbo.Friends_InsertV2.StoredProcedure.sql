USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_InsertV2]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Friends_InsertV2] 

 @Title nvarchar(120)
		,@Bio nvarchar(700)
		,@Summary nvarchar(255)
		,@Headline nvarchar(80)
		,@Slug nvarchar(100)
		,@StatusId int		
		,@ImageTypeId int 
		,@ImageUrl nvarchar(500)
		,@UserId int 
		,@Id int OUTPUT
as

/*

Declare @Id int = 0;

Declare	 @Title nvarchar(120) = 'Lauren'
		,@Bio nvarchar(700) = 'Lauren Bio'
		,@Summary nvarchar(255) = 'Lauren Summary'
		,@Headline nvarchar(80) = 'Lauren Headline'
		,@Slug nvarchar(100) = 'Lauren Slug'
		,@StatusId int = 4213
		,@TypeId int = 214
		,@Url nvarchar(500) = 'eeddffr'
		,@UserId int = 41


Execute dbo.Friends_InsertV2 	
							 @Title
							,@Bio 
							,@Summary 
							,@Headline 
							,@Slug 
							,@StatusId 
							,@TypeId
							,@Url
							,@UserId 
							,@Id OUTPUT
						
*/
BEGIN

INSERT INTO dbo.Images
		   ([TypeId],
		   [Url])
	Values (@ImageTypeId,
			@ImageUrl)

			Declare @PrimaryImageId int  = SCOPE_IDENTITY()

INSERT INTO [dbo].[FriendsV2]
           ([Title]
           ,[Bio]
           ,[Summary]
           ,[Headline]
           ,[Slug]
           ,[StatusId]
           ,[PrimaryImageId]
           ,[UserId])
     VALUES
           (@Title
           ,@Bio
           ,@Summary
           ,@Headline
           ,@Slug
           ,@StatusId
           ,@PrimaryImageId
           ,@UserId)

		   SET @Id = SCOPE_IDENTITY()
		   
END


GO
