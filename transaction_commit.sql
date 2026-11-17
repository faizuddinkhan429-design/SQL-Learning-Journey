create Database CollegeDB;
Use CollegeDB;

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_Name VARCHAR(50),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

START TRANSACTION;

INSERT INTO Student VALUES 
(1, 'Faiz'),
(2, 'Farhan'),
(3, 'Deepak');

INSERT INTO Course VALUES 
(101, 1, 'BCA'),
(102, 2, 'MCA'),
(103, 3, 'BCA');

COMMIT;

START TRANSACTION;

INSERT INTO Student VALUES 
(4, 'Rahul'),
(5, 'Anil');

INSERT INTO Course VALUES 
(104, 4, 'BBA'),
(105, 5, 'MCA'),
(106, 999, 'Rohit');

ROLLBACK;

SELECT * FROM Student;

SELECT * FROM Course;

 
 


