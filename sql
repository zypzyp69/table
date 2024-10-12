CREATE TABLE Patients (
    patient_id INTEGER PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),
    birthdate DATE,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255),
    insurance_number VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Doctors (
    doctor_id INTEGER PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    specialization VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    years_of_experience INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Appointments (
    appointment_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    doctor_id INTEGER,
    appointment_date DATETIME,
    status VARCHAR(20),
    reason_for_visit VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Medical_Records (
    record_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    doctor_id INTEGER,
    diagnosis TEXT,
    treatment TEXT,
    visit_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Medications (
    medication_id INTEGER PRIMARY KEY,
    record_id INTEGER,
    medication_name VARCHAR(255),
    dosage VARCHAR(100),
    frequency VARCHAR(100),
    start_date DATE,
    end_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO Patients (first_name, last_name, gender, birthdate, phone_number, email, address, insurance_number)
VALUES
('John', 'Doe', 'Male', '1985-05-12', '555-1234567', 'john.doe@example.com', '123 Elm St, City', 'INS-12345'),
('Jane', 'Smith', 'Female', '1990-07-22', '555-2345678', 'jane.smith@example.com', '456 Maple St, City', 'INS-23456'),
('Michael', 'Johnson', 'Male', '1978-12-01', '555-3456789', 'michael.j@example.com', '789 Oak St, City', 'INS-34567'),
('Emily', 'Williams', 'Female', '1989-03-14', '555-4567890', 'emily.williams@example.com', '321 Pine St, City', 'INS-45678'),
('Robert', 'Brown', 'Male', '1965-09-09', '555-5678901', 'robert.brown@example.com', '654 Birch St, City', 'INS-56789'),
('Jessica', 'Davis', 'Female', '1975-11-30', '555-6789012', 'jessica.d@example.com', '987 Cedar St, City', 'INS-67890'),
('David', 'Wilson', 'Male', '1987-08-15', '555-7890123', 'david.w@example.com', '432 Fir St, City', 'INS-78912'),
('Laura', 'Martinez', 'Female', '1995-01-20', '555-8901234', 'laura.martinez@example.com', '567 Palm St, City', 'INS-89012'),
('James', 'Lopez', 'Male', '1983-02-10', '555-9012345', 'james.lopez@example.com', '678 Spruce St, City', 'INS-90123'),
('Olivia', 'Parker', 'Female', '2000-01-01', '555-0123456', 'olivia.parker@example.com', '789 Ash St, City', 'INS-01234');

INSERT INTO Doctors (first_name, last_name, specialization, phone_number, email, years_of_experience)
VALUES
('Dr. Sarah', 'Miller', 'Cardiologist', '555-1111111', 'sarah.miller@example.com', 10),
('Dr. David', 'Wilson', 'Neurologist', '555-2222222', 'david.wilson@example.com', 15),
('Dr. Laura', 'Garcia', 'Dermatologist', '555-3333333', 'laura.garcia@example.com', 8),
('Dr. James', 'Martinez', 'Pediatrician', '555-4444444', 'james.martinez@example.com', 12),
('Dr. Linda', 'Lopez', 'Oncologist', '555-5555555', 'linda.lopez@example.com', 18),
('Dr. Richard', 'Clark', 'Orthopedist', '555-6666666', 'richard.clark@example.com', 20),
('Dr. Emma', 'Rodriguez', 'Psychiatrist', '555-7777777', 'emma.rodriguez@example.com', 7),
('Dr. Michael', 'Davis', 'Pulmonologist', '555-8888888', 'michael.davis@example.com', 11),
('Dr. Robert', 'Taylor', 'Gastroenterologist', '555-9999999', 'robert.taylor@example.com', 14),
('Dr. Jennifer', 'Clark', 'Endocrinologist', '555-1010101', 'jennifer.clark@example.com', 9);

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status, reason_for_visit)
VALUES
(1, 1, '2024-09-20 09:00:00', 'Scheduled', 'Routine Check-up'),
(2, 2, '2024-09-21 10:00:00', 'Completed', 'Migraine Consultation'),
(3, 3, '2024-09-22 11:00:00', 'Cancelled', 'Skin Rash'),
(4, 4, '2024-09-23 14:00:00', 'Scheduled', 'Child Vaccination'),
(5, 5, '2024-09-24 15:30:00', 'Completed', 'Cancer Screening'),
(6, 6, '2024-09-25 16:45:00', 'Scheduled', 'Orthopedic Consultation'),
(7, 7, '2024-09-26 09:30:00', 'Scheduled', 'Psychiatric Evaluation'),
(8, 8, '2024-09-27 11:00:00', 'Completed', 'Pulmonary Function Test'),
(9, 9, '2024-09-28 14:00:00', 'Cancelled', 'Digestive Issues'),
(10, 10, '2024-09-29 13:30:00', 'Scheduled', 'Hormonal Imbalance Consultation');

INSERT INTO Medical_Records (patient_id, doctor_id, diagnosis, treatment, visit_date)
VALUES
(1, 1, 'Hypertension', 'Medication: Lisinopril, Lifestyle changes', '2024-09-20'),
(2, 2, 'Migraine', 'Medication: Sumatriptan', '2024-09-21'),
(3, 3, 'Eczema', 'Topical steroid cream', '2024-09-22'),
(4, 4, 'Routine vaccination', 'MMR vaccine administered', '2024-09-23'),
(5, 5, 'Breast cancer screening', 'No abnormalities', '2024-09-24'),
(6, 6, 'Knee pain', 'Physiotherapy', '2024-09-25'),
(7, 7, 'Anxiety disorder', 'Therapy and medication', '2024-09-26'),
(8, 8, 'Asthma', 'Inhaler prescribed', '2024-09-27'),
(9, 9, 'Gastritis', 'Proton pump inhibitors', '2024-09-28'),
(10, 10, 'Hypothyroidism', 'Levothyroxine prescribed', '2024-09-29');

INSERT INTO Medications (record_id, medication_name, dosage, frequency, start_date, end_date)
VALUES
(1, 'Lisinopril', '10mg', 'Once daily', '2024-09-20', NULL),
(2, 'Sumatriptan', '50mg', 'As needed', '2024-09-21', NULL),
(3, 'Steroid cream', 'Apply topically', 'Twice daily', '2024-09-22', '2024-09-29'),
(4, 'MMR vaccine', '0.5ml', 'Single dose', '2024-09-23', NULL),
(5, 'None', NULL, NULL, '2024-09-24', NULL),
(6, 'Physical therapy', NULL, 'Twice weekly', '2024-09-25', '2024-10-15'),
(7, 'Escitalopram', '10mg', 'Once daily', '2024-09-26', NULL),
(8, 'Albuterol inhaler', '2 puffs', 'As needed', '2024-09-27', NULL),
(9, 'Omeprazole', '20mg', 'Once daily', '2024-09-28', '2024-10-28'),
(10, 'Levothyroxine', '50mcg', 'Once daily', '2024-09-29', NULL);
