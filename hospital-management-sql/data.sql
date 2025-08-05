USE HospitalManagement;

-- Insert Sample Data
-- Patients
INSERT INTO Patients (name, gender, dob, contact, address)
VALUES
('John Doe', 'Male', '1985-04-10', '9876543210', 'New York'),
('Alice Smith', 'Female', '1990-08-21', '8765432109', 'Chicago'),
('Robert Brown', 'Male', '1978-12-15', '7654321098', 'Boston');

-- Doctors
INSERT INTO Doctors (name, specialization, phone, availability)
VALUES
('Dr. Emily Clark', 'Cardiologist', '9871112222', 'Mon-Fri'),
('Dr. David Lee', 'Neurologist', '9873334444', 'Tue-Thu'),
('Dr. Sarah Johnson', 'Pediatrician', '9875556666', 'Mon-Sat');

-- Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status)
VALUES
(1, 1, '2025-07-29', 'Scheduled'),
(2, 2, '2025-07-30', 'Scheduled'),
(3, 3, '2025-07-31', 'Scheduled');

-- Medical Records
INSERT INTO MedicalRecords (patient_id, diagnosis, prescription, visit_date)
VALUES
(1, 'High Blood Pressure', 'Atenolol', '2025-07-29'),
(2, 'Migraine', 'Ibuprofen', '2025-07-30'),
(3, 'Flu', 'Paracetamol', '2025-07-31');

-- Billing
INSERT INTO Billing (patient_id, appointment_id, amount, payment_status, payment_date)
VALUES
(1, 1, 150.00, 'Paid', '2025-07-29'),
(2, 2, 200.00, 'Unpaid', NULL),
(3, 3, 120.00, 'Paid', '2025-07-31');
