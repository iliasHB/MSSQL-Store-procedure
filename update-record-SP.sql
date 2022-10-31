-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <31st Oct, 2022>
-- Description:	<Updating a record>
-- =============================================
ALTER PROCEDURE create_student_record
	-- Add the parameters for the stored procedure here
	@StudentId int,
	@Firstname nvarchar(30),
	@Surname nvarchar(30),
	@Age int,
	@Gender nvarchar(30),
	@_Date date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   -- update statements for procedure here
	UPDATE studentInfo_tb 
	SET Firstname = @Firstname, Surname = @Surname, Age = @Age, Gender = @Gender, _Date = @_Date
	WHERE @StudentId = StudentId
END
GO

-->>>>>>>>>>> Executing the store procedure <<<<<<<<<<<<--
---=== The EXEC statment below can be remove, 
--=== statement was added to test the store procedure ===----
EXEC create_student_record @StudentId = 1, @Firstname = 'Habeeb', @Surname = 'Soliu', @Age = '25', @Gender = 'Male', @_Date = '2022-10-31';
