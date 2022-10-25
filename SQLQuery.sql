--==========================================
-->>>> Create database statement <<<<<<<<<
CREATE DATABASE studentdb
--===========================================
-->>>> Delete database statement <<<<<<<<<
DROP DATABASE studentdb;
--===========================================
-->>>> Delete table statement <<<<<<<<<
DROP TABLE studentInfo_tb; 
DROP TABLE studentDept_tb; 
--===========================================
-->>>> Create studentInfo_tb table <<<<<<<<<
CREATE TABLE studentInfo_tb (
	StudentId int IDENTITY(1,1) PRIMARY KEY, --> IDENTITY is equivalent to AUTO_INCREMENT
	Firstname varchar(50) NOT NULL,
	Surname varchar(50) NOT NULL,
	Age int,
	Gender varchar(10) NOT NULL,
);
--===========================================
-->>>> Create studentDept_tb table <<<<<<<<<
CREATE TABLE studentDept_tb(
	Id int IDENTITY(1,1) PRIMARY KEY, 
	Department varchar(30) NOT NULL,
	Teacher_name varchar(30) NOT NULL,
	StudentId int FOREIGN KEY REFERENCES studentInfo_tb (StudentId) -->  FOREIGN KEY: provide a show a relationship between two tables
);
--===========================================
-->>>> Modify studentDept_tb table <<<<<<<<<
ALTER TABLE studentDept_tb
ADD StudentId int; --> Add column to an studentDept_tb table


INSERT INTO studentInfo_tb (Firstname, Surname, Age, Gender) VALUES ('Habeeb', 'Ayo', 12, 'Male');

INSERT INTO studentDept_tb (StudentId, Department, Teacher_name) VALUES (1, 'Science', 'Mr. John');




