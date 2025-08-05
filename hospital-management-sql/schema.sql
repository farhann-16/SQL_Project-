-- Create the Database
CREATE DATABASE HospitalManagement;
USE HospitalManagement;

-- Create Tables
-- Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    dob DATE NOT NULL,
    contact VARCHAR(15),
    address VARCHAR(255)
);


-- Doctors Table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    availability VARCHAR(50)
);

-- Appointments Table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- MedicalRecords Table
CREATE TABLE MedicalRecords (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    diagnosis TEXT,
    prescription TEXT,
    visit_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Billing Table
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_id INT,
    amount DECIMAL(10,2),
    payment_status ENUM('Paid', 'Unpaid') DEFAULT 'Unpaid',
    payment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

