USE [studentdb]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <25th Oct, 2023>
-- Description:	<Select all students record>
-- =============================================
CREATE PROCEDURE get_studentInfo
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM studentInfo_tb;
END
GO

EXEC get_studentInfo
