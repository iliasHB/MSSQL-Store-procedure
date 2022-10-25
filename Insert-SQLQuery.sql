USE [studentdb]
GO
/****** Object:  StoredProcedure [dbo].[student]    Script Date: 10/25/2022 9:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <10th of Oct>
-- Description:	<Insert user record to database>
-- =============================================
ALTER PROCEDURE [dbo].[student]
	-- Add the parameters for the stored procedure here
	@userId int,
	@firstname nvarchar(50),
	@lastname nvarchar(50),
	@othername nvarchar(50),
	@age nvarchar(50),
	@gender nvarchar(50),
	@state_of_origin nvarchar(50),
	@nationality nvarchar(50)
AS
BEGIN
	 SET NOCOUNT ON;
	 INSERT INTO dbo.student_records
             VALUES (@userId,  @firstname, @lastname, @othername, @age, @gender, @state_of_origin, @nationality)
END