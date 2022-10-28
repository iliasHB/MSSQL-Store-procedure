USE [studentdb]
GO
/****** Object:  StoredProcedure [dbo].[get_studentInfo]    Script Date: 10/28/2022 8:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <28/10/2023>
-- Description:	<Update student record>
-- =============================================
ALTER PROCEDURE [dbo].[get_studentInfo]
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
	SET Firstname = @Firstname, Surname = @Surname, Age = @Age, Gender = @Gender, @_Date = _Date
	WHERE @StudentId = StudentId
END

EXEC [get_studentInfo] @StudentId = 1, @Firstname = 'Habeeb', @Surname = 'Soliu', @Age = 72, @Gender = 'Male', @_Date = null
