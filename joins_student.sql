CREATE TABLE Department (
Dept_ID INT PRIMARY KEY,
Dept_Name VARCHAR (50)
);

INSERT INTO DEPARTMENT VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Management'),
(4, 'Commerce'),
(5, 'Mathematics');

CREATE TABLE Student (
Stud_ID INT PRIMARY KEY,
Name VARCHAR (50),
Dept_ID int
);

INSERT INTO STUDENT VALUES
(101, 'Ali', 1),
(102, 'Ahmed', 2),
(103, 'Sara', 1),
(104, 'Rahul', 3),
(105, 'Ayesha', 4);

SELECT * FROM Student
NATURAL JOIN Department;

SELECT Student.Stud_ID, Student.Name,Department.Dept_Name
FROM Student
LEFT JOIN Department ON Student.Dept_ID = Department.Dept_ID;

SELECT Department.Dept_ID, Department.Dept_Name, Student.Name
FROM Department
RIGHT JOIN Student ON Department.Dept_id = Student.Dept_ID;
