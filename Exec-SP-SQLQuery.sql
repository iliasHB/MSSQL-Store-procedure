-->>>>>>>> Executing the store procedure <<<<<<<<<<--

---=== Execute insert record store procedure (sp) ===----
EXEC sp_create_student_record 'Habeeb', 'Ilias', '', 'Male', 'Science', 'Mr. Saheed', '';
--=========================================================
---=== Execute select record store-procedure (sp) ===----
EXEC sp_get_studentInfo;
EXEC sp_studentScore 1;
EXEC sp_calc_stdGrade;
--=========================================================
---=== Execute update record store-procedure (sp) ===----
EXEC update_student_record 1,'Max', 'Mathew', 23, 'Male', ''
--=========================================================
---=== Execute create student score record store-procedure (sp) ===----
EXEC sp_create_stdTest_score 1, 20, 12, 32, 23, 16, 14, 34, 30