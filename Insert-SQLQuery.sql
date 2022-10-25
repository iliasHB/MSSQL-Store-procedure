USE [studentdb]
GO
/****** Object:  StoredProcedure [dbo].[student]    Script Date: 10/25/2022 8:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[student]
	-- Add the parameters for the stored procedure here
	--- <@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--- <@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
	@userId int,
	@firstname nvarchar(50),
	@lastname nvarchar(50),
	@othername nvarchar(50),
	@age nvarchar(50),
	@gender nvarchar(50),
	@state_of_origin nvarchar(50),
	@nationality nvarchar(50)
AS
	 SET NOCOUNT ON;
	 INSERT INTO dbo.student_records
             VALUES (@userId, @firstname, @lastname, @othername, @age, @gender, @state_of_origin, @nationality)
GO
-- BEGIN
    -- Insert statements for procedure here
	-- SET NOCOUNT ON;
	--- INSERT INTO dbo.student_records (userId, firstname, lastname, othername, age, gender, state_of_origin, nationality)
			--- VALUES(1,'Habeebs', 'Soliu', 'AY', '20', 'male', 'Lagos', 'Nigeria')
-- END
