-- Department
INSERT INTO Department VALUES
(101,'Computer','Dr. Patil'),
(102,'Information Technology','Dr. Joshi');

-- Student
INSERT INTO Student VALUES
(1,'Pallavi Lagad','Female',101),
(2,'Rahul Patil','Male',102);

-- Faculty
INSERT INTO Faculty VALUES
(201,'Prof. Kulkarni',101),
(202,'Prof. Sharma',102);

-- Subject
INSERT INTO Subject VALUES
(301,'Database Management System',201),
(302,'Operating System',202);

-- Course
INSERT INTO Course VALUES
(401,'M.E Computer Engineering','2 Years');

-- Attendance
INSERT INTO Attendance VALUES
(1,1,'2026-07-07','Present'),
(2,2,'2026-07-07','Absent');

-- Marks
INSERT INTO Marks VALUES
(1,1,301,90),
(2,2,302,82);
