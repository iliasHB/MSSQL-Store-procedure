USE [studentdb]
GO
/****** Object:  StoredProcedure [dbo].[sp_create_student_record]    Script Date: 10/31/2022 1:27:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <31 Oct, 2022>
-- Description:	<Insert recort to studentInfo_tb table>
-- =============================================
ALTER PROCEDURE [dbo].[sp_create_student_record]
	-- Add the parameters for the stored procedure here
	 @Firstname nvarchar(50),
	 @Surname nvarchar(50),
	 @DateOfBirth date,
	 @Gender nvarchar(10),
	 @Department nvarchar(30),
	 @Class_teacher_name nvarchar(30),
	 @_Date datetime
AS

BEGIN
	 SET NOCOUNT ON
	 INSERT INTO studentInfo_tb (Firstname, Surname, DateOfBirth, Gender, Department, Class_teacher_name, _Date)
             VALUES (@Firstname, @Surname, GETDATE() - ('1992-07-15'), @Gender, @Department, @Class_teacher_name, GETDATE())
END

-->>>> Executing the store procedure <<<--
---=== The EXEC statment below can be remove, is just added to test the store procedure ===----
-- EXEC sp_create_student_record @Firstname = 'Mide', @Surname = 'Mike', @Age = 21, @Gender = 'Female';