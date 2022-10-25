USE [studentdb]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <25th Oct, 2023>
-- Description:	<Store procedure to insert record to database>
-- =============================================
CREATE PROCEDURE set_new_studentrecord
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
EXEC set_new_studentrecord @Firstname = 'Sade', @Surname = 'Mike', @Age = 25, @Gender = 'Female';