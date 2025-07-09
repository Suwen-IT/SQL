/* DML (Data Manipulation Language )
SELECT, DELETE, UPDATE, INSERT */

/* DDL (Data Defination Language)
CREATE TABLE, ALTER TABLE, DROP TABLE*/

/* DCL (Data Control Language)
GRANT, DENY, REVOKE */


CREATE DATABASE school

USE school

CREATE TABLE student(
    StudentNumber VARCHAR(4),
    StudentName VARCHAR(12),
    StudentSurname VARCHAR(20),
    StudentID CHAR(11),
    StudentInf text
)

ALTER TABLE student add GPA TINYINT

ALTER TABLE student add StartDate smalldatetime, Address VARCHAR(40)

-- Drop Table "Table Name"

ALTER TABLE student drop column StartDate

SELECT * FROM student 

SELECT StudentNumber,StudentName FROM student

