USE [studentdb]
GO
/****** Object:  StoredProcedure [dbo].[sp_calc_stdGrade]    Script Date: 11/17/2022 7:34:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <9th Oct, 2022>
-- Description:	<Join records in tables>
-- =============================================
ALTER PROCEDURE [dbo].[sp_calc_stdGrade]
	-- Add the parameters for the stored procedure here
	@studentId AS VARCHAR(MAX)
AS
BEGIN
	DECLARE @First_subj AS INT = 0
	DECLARE @Second_subj AS INT = 0
	DECLARE @Third_subj AS INT = 0
	DECLARE @Fourth_subj AS INT = 0 
	DECLARE @Fifth_subj AS INT = 0
	DECLARE @Six_subj AS INT = 0
	DECLARE @Seventh_subj AS INT = 0
	DECLARE @Eight_subj AS INT = 0

	DECLARE @First_sub AS INT = 0
	DECLARE @Second_sub AS INT = 0 
	DECLARE @Third_sub AS INT = 0
	DECLARE @Fourth_sub AS INT = 0 
	DECLARE @Fifth_sub AS INT = 0 
	DECLARE @Six_sub AS INT = 0
	DECLARE @Seventh_sub AS INT = 0
	DECLARE @Eight_sub AS INT = 0

	DECLARE @total AS INT = 0
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		@First_subj = Mathematics, 
		@Second_subj = Further_math, 
		@Third_subj = English, 
		@Fourth_subj = Physics, 
		@Fifth_subj = Chemistry, 
		@Six_subj = Biology, 
		@Seventh_subj = Agriculture, 
		@Eight_subj = Economics 
	FROM sci_studentExamScore_tb

	SELECT 
		@First_sub = Mathematics, 
		@Second_sub = Further_math, 
		@Third_sub = English, 
		@Fourth_sub = Physics, 
		@Fifth_sub = Chemistry, 
		@Six_sub = Biology, 
		@Seventh_sub = Agriculture, 
		@Eight_sub = Economics 
	 FROM sci_studentTestScore_tb 

	 SET @total = @First_subj + @First_sub
	 PRINT(@Second_sub);
	SELECT Mathematics, [dbo].[fn_calc_stdGrade](@total) AS [Grade] FROM sci_studentExamScore_tb
	PRINT(@First_subj + @First_sub);
END
