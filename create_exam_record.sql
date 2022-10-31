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
-- Create date: <31th Oct, 2022>
-- Description:	<Create Student score>
-- =============================================
ALTER PROCEDURE sp_create_sci_st_score
	-- Add the parameters for the stored procedure here
	@StudentId int OUTPUT, -->  FOREIGN KEY: provide a show a relationship between two tables
	@Mathematics int, 
	@Further_math int, 
	@English int,
	@Physics int,
	@Chemistry int,
	@Biology int,
	@Agriculture int,
	@Economics int,
	@Total_exam_score  int,
	@Average_score float,
	@stdId int
	--@stdDept nvarchar(30)
AS
  --@Total_exam_score = 12;
  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @stdId = @StudentId;
	--SET @stdDept = (SELECT Department FROM studentInfo_tb WHERE Department = 'Science')
    -- Insert statements for procedure here
	--IF @stdId = (SELECT StudentId FROM sci_studentExamScore_tb WHERE StudentId = @StudentId) 
	IF NOT EXISTS (SELECT StudentId FROM sci_studentExamScore_tb WHERE StudentId = @StudentId) 
		BEGIN  
		--IF stdDept = (SELECT Department FROM studentInfo_tb WHERE Department = @stdDept)
			SET @Total_exam_score = (@Mathematics + @Further_math + @English + @Physics + @Chemistry + @Biology + @Agriculture + @Economics);
			SET @Average_score = AVG(@Total_exam_score);
			INSERT INTO sci_studentExamScore_tb(StudentId, Mathematics, Further_math, English, Physics, Chemistry, Biology, Agriculture, Economics, Total_exam_score, Average_score)
			VALUES(@StudentId, @Mathematics, @Further_math, @English, @Physics, @Chemistry, @Biology, @Agriculture, @Economics, @Total_exam_score, @Average_score)
			SET @StudentId = @@IDENTITY
		END
	ELSE 
		BEGIN
			SELECT * FROM sci_studentExamScore_tb
		END
END
GO

