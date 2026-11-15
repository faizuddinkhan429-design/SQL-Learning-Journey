CREATE DATABASE XYZ;
USE XYZ;

CREATE TABLE Employee (
Emp_ID INT PRIMARY KEY,
Name VARCHAR (50),
Department VARCHAR(50),
Salary INT
);

INSERT INTO Employee value
(101, 'Simran', 'HR', 31000, 'Professor'),
(102, 'Rohan', 'IT', 37000, 'Assistant'),
(103, 'Pooja', 'Sales', 26000, 'Professor'),
(104, 'Ankit', 'Finance', 34000, 'Manager'),
(105, 'Nisha', 'HR', 30000, 'Professor'),
(106, 'Mohit', 'IT', 38000, 'Manager'),
(107, 'Karan', 'IT', 40000, 'Professor'),
(108, 'Pooja', 'HR', 35000, 'Assistant'),
(109, 'Vikas', 'Sales', 30000, 'Manager'),
(110, 'Anjali', 'IT', 45000, 'Professor'),
(111, 'Ravi', 'HR', 32000, 'Assistant');

SELECT * FROM Employee;

SELECT NAME, Salary
FROM Employee
ORDER BY Salary ASC;

SELECT Department, AVG(Salary) AS AVG_Salary
FROM Employee
GROUP BY Department;

SELECT Department, AVG(Salary) AS Average_Salary
FROM Employee
WHERE Designation = 'Professor'
GROUP BY Department;


DROP VIEW IT_Employees;

SELECT AVG(Salary) AS Average_Salary
FROM Employee;

SELECT COUNT(*) AS Total_Emp
FROM Employee;

SELECT MIN(Salary) AS Minimum_Salary
FROM Employee;

SELECT MAX(Salary) AS Maximum_Salary
FROM Employee;

SELECT SUM(Salary) AS Total_Salary
FROM Employee;

SELECT * FROM Employee;

CREATE VIEW IT_Employees AS
SELECT Emp_ID, Name, Salary
FROM Employee
WHERE Department = 'IT';


