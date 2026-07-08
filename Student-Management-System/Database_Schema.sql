-- Student Management System Database Schema

CREATE DATABASE StudentDB;

USE StudentDB;
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50),
    HOD VARCHAR(50)
);
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Gender VARCHAR(10),
    Department_ID INT,
    FOREIGN KEY (Department_ID)
    REFERENCES Department(Department_ID)
);
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Faculty_Name VARCHAR(50),
    Department_ID INT,
    FOREIGN KEY (Department_ID)
    REFERENCES Department(Department_ID)
);
CREATE TABLE Subject (
    Subject_ID INT PRIMARY KEY,
    Subject_Name VARCHAR(50),
    Faculty_ID INT,
    FOREIGN KEY (Faculty_ID)
    REFERENCES Faculty(Faculty_ID)
);
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
