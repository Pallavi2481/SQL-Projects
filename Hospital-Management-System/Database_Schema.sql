-- Hospital Management System Database

CREATE DATABASE HospitalDB;

USE HospitalDB;
-- Doctor Table
CREATE TABLE Doctor (
    Doctor_ID INT PRIMARY KEY,
    Doctor_Name VARCHAR(50),
    Specialization VARCHAR(50),
    Phone VARCHAR(15)
);

-- Patient Table
CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Phone VARCHAR(15)
);

-- Appointment Table
CREATE TABLE Appointment (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

-- Medicine Table
CREATE TABLE Medicine (
    Medicine_ID INT PRIMARY KEY,
    Medicine_Name VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Prescription Table
CREATE TABLE Prescription (
    Prescription_ID INT PRIMARY KEY,
    Appointment_ID INT,
    Medicine_ID INT,
    Dosage VARCHAR(50),
    FOREIGN KEY (Appointment_ID) REFERENCES Appointment(Appointment_ID),
    FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID)
);

-- Billing Table
CREATE TABLE Billing (
    Bill_ID INT PRIMARY KEY,
    Patient_ID INT,
    Total_Amount DECIMAL(10,2),
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);
