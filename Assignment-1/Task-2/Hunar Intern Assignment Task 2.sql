CREATE DATABASE hunar_intern;

CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Marks INT,
    Aadhar_No VARCHAR(12) UNIQUE,
    Address VARCHAR(100)
);

CREATE TABLE Course (
    RollNo INT,
    Course VARCHAR(50),
    Course_Duration VARCHAR(20),
    FOREIGN KEY (RollNo) REFERENCES Student(RollNo)
);

INSERT INTO Student (RollNo, Name, Marks, Aadhar_No, Address)
VALUES
(101, 'Rahul', 85, '123456789101', 'Delhi'),
(102, 'Riya', 92, '123456789102', 'Noida'),
(103, 'Aman', 28, '123456789103', 'Ghaziabad'),
(104, 'Rohit', 65, '123456789104', 'Meerut'),
(105, 'Sohan', 20, '123456789105', 'Agra');

SELECT * FROM Student;

INSERT INTO Course (RollNo, Course, Course_Duration)
VALUES
(101, 'BCA', '3 Years'),
(102, 'BBA', '3 Years'),
(103, 'BCA', '3 Years'),
(104, 'MCA', '2 Years'),
(105, 'BCA', '3 Years');

SELECT * FROM Course;

SELECT AVG(Marks) AS Average_Marks
FROM Student;

SELECT Name
FROM Student
ORDER BY Name ASC;

SELECT RollNo, Name
FROM Student
WHERE Marks < 30;

SELECT RollNo
FROM Student
WHERE Name LIKE 'R%';

SELECT RollNo
FROM Course
WHERE Course = 'BCA';

