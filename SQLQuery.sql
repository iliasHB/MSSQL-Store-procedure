--==========================================
-->>>> Create database statement <<<<<<<<<
CREATE DATABASE studentdb
--===========================================
-->>>> Delete database statement <<<<<<<<<
DROP DATABASE studentdb;
--===========================================
-->>>> Delete table statement <<<<<<<<<
DROP TABLE studentInfo_tb; 
DROP TABLE com_studentExamScore_tb; 
DROP TABLE art_studentExamScore_tb;
DROP TABLE sci_studentExamScore_tb;
DROP TABLE art_studentTestScore_tb;
DROP TABLE com_studentTestScore_tb;
DROP TABLE sci_studentTestScore_tb;
--===========================================
-->>>> Create studentInfo_tb table <<<<<<<<<
CREATE TABLE studentInfo_tb (
	StudentId int IDENTITY(1,1) PRIMARY KEY, --> IDENTITY is equivalent to AUTO_INCREMENT
	Firstname varchar(50) NOT NULL,
	Surname varchar(50) NOT NULL,
	DateOfBirth Date NOT NULL,
	Gender varchar(10) NOT NULL,
	Department varchar(30) NOT NULL,
	Class_teacher_name varchar(30) NOT NULL,
	_Date datetime NOT NULL
);
--===========================================
-->>>> Create studentDept_tb table <<<<<<<<<
CREATE TABLE studentDept_tb(
	Id int IDENTITY(1,1) PRIMARY KEY, 
	Department varchar(30) NOT NULL,
	Class_teacher_name varchar(30) NOT NULL,
	StudentId int FOREIGN KEY REFERENCES studentInfo_tb (StudentId) -->  FOREIGN KEY: provide a show a relationship between two tables
);
CREATE TABLE sci_studentScore_tb(
	Id int IDENTITY(1,1) PRIMARY KEY, 
	StudentId int FOREIGN KEY REFERENCES studentInfo_tb (StudentId), -->  FOREIGN KEY: provide a show a relationship between two tables
	Mathematics int, 
	Further_math int, 
	English int,
	Physics int,
	Chemistry int,
	Biology int,
	Agriculture int,
	Economics int,
	Total_test_score  int,
	Average_score int
);

CREATE TABLE com_studentTestScore_tb(
	Id int IDENTITY(1,1) PRIMARY KEY, 
	StudentId int FOREIGN KEY REFERENCES studentInfo_tb (StudentId), -->  FOREIGN KEY: provide a show a relationship between two tables
	Mathematics int,  
	English int,
	Economics int,
	Commerce int,
	Account int,
	Biology int,
	Agriculture int,
	_Language int,
	Total_test_score  int,
	Average_score int
);

CREATE TABLE art_studentTestScore_tb(
	Id int IDENTITY(1,1) PRIMARY KEY, 
	StudentId int FOREIGN KEY REFERENCES studentInfo_tb (StudentId), -->  FOREIGN KEY: provide a show a relationship between two tables
	Mathematics int,  
	English int,
	Literature int,
	Economics int,
	Fine_art int,
	Biology int,
	Agriculture int,
	_Language int,
	Total_test_score  int,
	Average_score int
);
--===========================================
-->>>> Alter studentDept_tb table <<<<<<<<<
ALTER TABLE studentInfo_tb --> add, delete and modify a column in the table
ALTER COLUMN _Date date NOT NULL; --> Add column to an studentInfo_tb table

ALTER TABLE studentInfo_tb
DROP COLUMN st_Date; --> date column is deleted

ALTER TABLE studentInfo_tb ALTER COLUMN Age varchar(20); --> Change the datatype of the Age column
--===========================================
-->>>> Insert Rescord to table <<<<<<<<<
INSERT INTO studentInfo_tb (Firstname, Surname, Age, Gender) VALUES ('Habeeb', 'Ayo', 12, 'Male');
INSERT INTO studentDept_tb (StudentId, Department, Teacher_name) VALUES (1, 'Science', 'Mr. John');

--===========================================
-->>>> Select Record to table <<<<<<<<<
SELECT * FROM studentInfo_tb  --> Select all records
SELECT * FROM studentInfo_tb WHERE Age = 12  --> Select records where age = 12
SELECT Firstname, Age FROM studentInfo_tb --> Select all firstname & age records
SELECT TOP 4 * FROM studentInfo_tb ORDER BY Age ASC --> Select first 4 record orderby age in ascending order

SELECT DateOfBirth, [dbo].[fn_longDate](_Date)  AS [DATE] FROM studentInfo_tb 

--===========================================
-->>>> Update Record to table <<<<<<<<<
UPDATE studentInfo_tb SET Age = 30, Surname = 'ilias' WHERE StudentId = 1





