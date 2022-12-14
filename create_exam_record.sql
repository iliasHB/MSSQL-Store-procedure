USE [studentdb]
GO
/****** Object:  StoredProcedure [dbo].[sp_create_stdExam_score]    Script Date: 11/15/2022 6:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Habeeb S.A>
-- Create date: <31th Oct, 2022>
-- Description:	<Create Student score>
-- =============================================
ALTER PROCEDURE [dbo].[sp_create_stdExam_score]
	-- Add the parameters for the stored procedure here
	@StudentId int, -->  FOREIGN KEY: provide a show a relationship between two tables
	@First_subj int, 
	@Second_subj int, 
	@Third_subj int,
	@Fourth_subj int,
	@Fifth_subj int,
	@Six_subj int,
	@Seventh_subj int,
	@Eight_subj int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DECLARE @Total_exam_score AS int = 0
	DECLARE @Average_score AS float = 0.0
	DECLARE @stdDept nvarchar(MAX) = NULL
	DECLARE @department nvarchar(MAX) = NULL
	SET NOCOUNT ON;
	
	SET @stdDept = (SELECT Department FROM studentInfo_tb WHERE StudentId = @StudentId)

    -- Insert statements for procedure here
	IF @stdDept = 'Science'
		BEGIN
			IF NOT EXISTS (SELECT StudentId FROM sci_studentExamScore_tb WHERE StudentId = @StudentId) 
					BEGIN  
						SET @Total_exam_score = (@First_subj + @Second_subj + @Third_subj + @Fourth_subj + @Fifth_subj + @Six_subj + @Seventh_subj + @Eight_subj);
						SET @Average_score = @Total_exam_score / 8;
							IF (@First_subj <= 60 AND @Second_subj <= 60 AND @Third_subj <= 60 AND @Fourth_subj <= 60 
								AND @Fifth_subj <= 60 AND @Six_subj <= 60 AND @Seventh_subj <= 60 AND @Eight_subj<= 60)
								BEGIN
									INSERT INTO sci_studentExamScore_tb(StudentId, Mathematics, Further_math, English, Physics, Chemistry, Biology, Agriculture, Economics, Total_exam_score, Average_score)
									VALUES(@StudentId, @First_subj, @Second_subj, @Third_subj, @Fourth_subj, @Fifth_subj, @Six_subj, @Seventh_subj, @Eight_subj, @Total_exam_score, @Average_score)
									SET @StudentId = @@IDENTITY
									RETURN
								END
							ELSE
								BEGIN
									SELECT 'Exan score can not be greate than 60 !!!' AS [Error Message]
									RETURN
								END
						
					END

			ELSE 
				BEGIN
					SELECT * FROM sci_studentExamScore_tb
					RETURN
				END
		END
	IF @stdDept = 'Art'
		BEGIN
			IF NOT EXISTS (SELECT StudentId FROM art_studentExamScore_tb WHERE StudentId = @StudentId) 
				BEGIN  
					SET @Total_exam_score = (@First_subj + @Second_subj + @Third_subj + @Fourth_subj + @Fifth_subj + @Six_subj + @Seventh_subj + @Eight_subj);
					SET @Average_score = @Total_exam_score / 8;
					IF (@First_subj <= 60 AND @Second_subj <= 60 AND @Third_subj <= 60 AND @Fourth_subj <= 60 
						AND @Fifth_subj <= 60 AND @Six_subj <= 60 AND @Seventh_subj <= 60 AND @Eight_subj<= 60)
						BEGIN
							INSERT INTO art_studentExamScore_tb(StudentId, Mathematics, English, Literature,  Economics, Fine_art, Biology, Agriculture, _Language, Total_exam_score, Average_score)
							VALUES(@StudentId, @First_subj, @Second_subj, @Third_subj, @Fourth_subj, @Fifth_subj, @Six_subj, @Seventh_subj, @Eight_subj, @Total_exam_score, @Average_score)
							SET @StudentId = @@IDENTITY
							RETURN
						END
					ELSE
						BEGIN
							SELECT 'Exan score can not be greate than 60 !!!' AS [Error Message]
							RETURN
						END
					
				END
			ELSE 
				BEGIN
					SELECT * FROM art_studentExamScore_tb
					RETURN
				END
		END

	IF @stdDept = 'Commercial'
		BEGIN
			IF NOT EXISTS (SELECT StudentId FROM com_studentExamScore_tb WHERE StudentId = @StudentId) 
				BEGIN  
					SET @Total_exam_score = (@First_subj + @Second_subj + @Third_subj + @Fourth_subj + @Fifth_subj + @Six_subj + @Seventh_subj + @Eight_subj);
					SET @Average_score = @Total_exam_score / 8;
					IF (@First_subj <= 60 AND @Second_subj <= 60 AND @Third_subj <= 60 AND @Fourth_subj <= 60 
						AND @Fifth_subj <= 60 AND @Six_subj <= 60 AND @Seventh_subj <= 60 AND @Eight_subj<= 60)
						BEGIN
							INSERT INTO com_studentExamScore_tb(StudentId, Mathematics, English, Economics, Commerce, Account, Biology, Agriculture, _Language, Total_exam_score, Average_score)
							VALUES(@StudentId, @First_subj, @Second_subj, @Third_subj, @Fourth_subj, @Fifth_subj, @Six_subj, @Seventh_subj, @Eight_subj, @Total_exam_score, @Average_score)
							SET @StudentId = @@IDENTITY
							RETURN
						END
					ELSE
						BEGIN
							SELECT 'Exan score can not be greate than 60 !!!' AS [Error Message]
							RETURN
						END
					
				END
			ELSE 
				BEGIN
					SELECT * FROM com_studentExamScore_tb
					RETURN
				END
		END

	SELECT 'No match found in the query !!!' AS [Error Message]
END
