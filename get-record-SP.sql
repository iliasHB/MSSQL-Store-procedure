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
-- Author:		<Habeeb>
-- Create date: <31 Oct, 2022>
-- Description:	<Selecte recorf from the studentInfo_tb table>
-- =============================================
CREATE PROCEDURE sp_get_studentInfo
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
-->>>> Executing the store procedure <<<--
---=== The EXEC statment below can be remove, 
--=== statement was added to test the store procedure ===----
EXEC sp_get_studentInfo
