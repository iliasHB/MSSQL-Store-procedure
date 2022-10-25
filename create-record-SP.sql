USE [studentdb]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE create_student_record
	-- Add the parameters for the stored procedure here
	 @Firstname nvarchar(50),
	 @Surname nvarchar(50),
	 @Age int,
	 @Gender nvarchar(10)
AS
BEGIN
	 SET NOCOUNT ON
	 INSERT INTO studentInfo_tb
             VALUES (@Firstname, @Surname, @Age, @Gender)
END

-->>>> Executing the store procedure <<<--
---=== The EXEC statment below can be remove, is just added to test the store procedure ===----
EXEC create_student_record @Firstname = 'Mide', @Surname = 'Mike', @Age = 21, @Gender = 'Female';
GO
