USE [C138_byronpc18_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Employers_Insert]    Script Date: 4/3/2024 3:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Employers_Insert]

@Age int
,@FirstName nvarchar(50)
,@LastName nvarchar(50)
,@CompanyId int
,@Id int OUTPUT

as

/*

Select *
from dbo.Employer

Declare @Age int =24
		,@FirstName nvarchar(50)='Larry'
		,@LastName nvarchar(50)='Holmes'
		,@CompanyId int= 2
		,@Id int = 0

Execute dbo.Employers_Insert @Age 
							,@FirstName 
							,@LastName 
							,@CompanyId 
							,@Id OUTPUT


Select *
from dbo.Employer
*/

Begin

INSERT INTO [dbo].[Employer]
           ([Age]
           ,[FirstName]
           ,[LastName]
           ,[CompanyId])
     VALUES
           (@Age 
           ,@FirstName 
           ,@LastName 
           ,@CompanyId)

		   SET @Id = SCOPE_IDENTITY()

End


GO
