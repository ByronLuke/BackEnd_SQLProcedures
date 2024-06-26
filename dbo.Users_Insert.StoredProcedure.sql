USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Users_Insert]

 @FirstName nvarchar(50) 
		,@LastName nvarchar(50) 
		,@Email nvarchar(50) 
		,@Password nvarchar(50)
		,@AvatarUrl  nvarchar(50)
		,@TenantId  nvarchar(50) 
		,@Id int OUTPUT

/*

Execute dbo.Users_Insert

*/
as

BEGIN

/*------Test Code-----
Declare @Id int = 0

Declare @FirstName nvarchar(50) ='Harry'
		,@LastName nvarchar(50) = 'Johnson'
		,@Email nvarchar(50) = 'johnson@gmail.com'
		,@Password nvarchar(50) = 'secretPassword12345!!'
		,@AvatarUrl  nvarchar(50) = 'https://sm.ign.com/ign_nordic/cover/a/avatar-gen/avatar-generations_prsz.jpg'
		,@TenantId  nvarchar(50) = 'tenantID12345'
		,@UserId nvarchar(50) = 'bhbhgbvre' 
Declare @Id int = 0


Declare @Id int = 0

Declare @FirstName nvarchar(50) ='Joey'
		,@LastName nvarchar(50) = 'Sea'
		,@Email nvarchar(50) = 'sea@gmail.com'
		,@Password nvarchar(50) = 'secretPassword12345!!'
		,@AvatarUrl  nvarchar(50) = 'https://sm.ign.com/ign_nordic/cover/a/avatar-gen/avatar-generations_prsz.jpg'
		,@TenantId  nvarchar(50) = 'tenantID12345'

	
	Execute dbo.Users_Insert @FirstName  
							,@LastName 
							,@Email 
							,@Password 
							,@AvatarUrl  
							,@TenantId 
							,@Id OUTPUT

		Select *
		From dbo.Users
		Where ID = @Id
*/	


INSERT INTO [dbo].[Users]
           ([FirstName]
           ,[LastName]
           ,[Email]
           ,[Password]
           ,[AvatarUrl]
           ,[TenantId])
     VALUES
           (@FirstName
           ,@LastName
           ,@Email
           ,@Password
           ,@AvatarUrl
           ,@TenantId)

		   SET @Id = SCOPE_IDENTITY()






END
GO
