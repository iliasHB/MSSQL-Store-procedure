USE [studentdb]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <25th Oct, 2022>
-- Description:	<Join records in tables>
-- =============================================
CREATE PROCEDURE get_studentInfo
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT st.StudentId, st.Firstname, st.Surname, sd.Department FROM studentInfo_tb st

	INNER JOIN studentDept_tb sd ON st.StudentId=sd.StudentId;
END

-->>>> Executing the store procedure <<<--
EXEC get_studentInfo;