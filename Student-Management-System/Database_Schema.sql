-- Student Management System Database Schema

CREATE DATABASE StudentDB;

USE StudentDB;
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Duration VARCHAR(20)
);

CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY,
    Student_ID INT,
    Attendance_Date DATE,
    Status VARCHAR(10),
    FOREIGN KEY (Student_ID)
    REFERENCES Student(Student_ID)
);

CREATE TABLE Marks (
    Mark_ID INT PRIMARY KEY,
    Student_ID INT,
    Subject_ID INT,
    Marks INT,
    FOREIGN KEY (Student_ID)
    REFERENCES Student(Student_ID),
    FOREIGN KEY (Subject_ID)
    REFERENCES Subject(Subject_ID)
);
