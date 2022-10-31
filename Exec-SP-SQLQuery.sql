-->>>>>>>> Executing the store procedure <<<<<<<<<<--

---=== Execute insert record store procedure (sp) ===----
EXEC sp_create_student_record 'Habeeb', 'Ilias', '', 'Male', 'Science', 'Mr. Saheed', '';
--=========================================================
---=== Execute select record store-procedure (sp) ===----
EXEC sp_get_studentInfo;
--=========================================================
---=== Execute update record store-procedure (sp) ===----
EXEC update_student_record 1,'Max', 'Mathew', 23, 'Male', ''
--=========================================================
---=== Execute create student score record store-procedure (sp) ===----
EXEC sp_create_sci_st_score 2, 42, 45, 53, 43, 56, 54, 43, 30, 0, 0, 2