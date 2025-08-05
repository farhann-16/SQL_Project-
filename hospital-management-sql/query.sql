USE HospitalManagement;

-- Queries Basic SELECT

-- List all patients
SELECT * FROM Patients;

-- Show all doctors and their specialization
SELECT name, specialization FROM Doctors;

-- JOIN Queries

-- Appointments with patient and doctor names
SELECT a.appointment_id, p.name AS patient_name, d.name AS doctor_name, a.appointment_date, a.status
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id;

-- GROUP BY

-- Total revenue per doctor
SELECT d.name AS doctor_name, SUM(b.amount) AS total_revenue
FROM Billing b
JOIN Appointments a ON b.appointment_id = a.appointment_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.name;

-- Subquery

-- Patients with unpaid bills
SELECT name FROM Patients
WHERE patient_id IN (SELECT patient_id FROM Billing WHERE payment_status = 'Unpaid');
