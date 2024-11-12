Use Besant
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address TEXT
);

CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    office_hours VARCHAR(100)
);

CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    reason_for_visit TEXT,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE MedicalHistories (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    medical_condition VARCHAR(255),
    diagnosis_date DATE,
    treatment VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

Alter table Medicalhistories add column diagnosis varchar(50)
Alter table Medicalhistories drop medical_condition;

CREATE TABLE AppointmentSlots (
    slot_id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_id INT,
    slot_date DATE,
    slot_start_time TIME,
    slot_end_time TIME,
    is_booked BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Patients (first_name, last_name, date_of_birth, phone_number, email, address) VALUES
('John', 'Doe', '1980-01-01', '123-456-7890', 'john.doe@example.com', '123 Elm St, Springfield'),
('Jane', 'Smith', '1985-02-15', '123-555-7891', 'jane.smith@example.com', '456 Oak St, Springfield'),
('Emily', 'Johnson', '1990-03-30', '123-555-7892', 'emily.johnson@example.com', '789 Pine St, Springfield'),
('Michael', 'Brown', '1975-12-22', '123-555-7893', 'michael.brown@example.com', '101 Maple St, Springfield'),
('Linda', 'Davis', '1982-07-15', '123-555-7894', 'linda.davis@example.com', '202 Cedar St, Springfield'),
('Robert', 'Wilson', '1965-04-12', '123-555-7895', 'robert.wilson@example.com', '303 Birch St, Springfield'),
('Susan', 'Miller', '1978-11-05', '123-555-7896', 'susan.miller@example.com', '404 Elm St, Springfield'),
('James', 'Taylor', '1992-08-25', '123-555-7897', 'james.taylor@example.com', '505 Oak St, Springfield'),
('Patricia', 'Anderson', '1988-09-17', '123-555-7898', 'patricia.anderson@example.com', '606 Pine St, Springfield'),
('David', 'Thomas', '1971-05-12', '123-555-7899', 'david.thomas@example.com', '707 Maple St, Springfield'),
('Jennifer', 'Jackson', '1984-03-03', '123-555-7800', 'jennifer.jackson@example.com', '808 Cedar St, Springfield'),
('William', 'White', '1979-01-10', '123-555-7801', 'william.white@example.com', '909 Birch St, Springfield'),
('Barbara', 'Harris', '1981-06-20', '123-555-7802', 'barbara.harris@example.com', '1010 Elm St, Springfield'),
('Richard', 'Martin', '1974-10-02', '123-555-7803', 'richard.martin@example.com', '1111 Oak St, Springfield'),
('Jessica', 'Garcia', '1993-02-18', '123-555-7804', 'jessica.garcia@example.com', '1212 Pine St, Springfield'),
('Charles', 'Martinez', '1969-07-29', '123-555-7805', 'charles.martinez@example.com', '1313 Maple St, Springfield'),
('Sarah', 'Roberts', '1987-12-05', '123-555-7806', 'sarah.roberts@example.com', '1414 Cedar St, Springfield'),
('Thomas', 'Lee', '1991-09-10', '123-555-7807', 'thomas.lee@example.com', '1515 Birch St, Springfield'),
('Nancy', 'Lopez', '1973-04-23', '123-555-7808', 'nancy.lopez@example.com', '1616 Elm St, Springfield'),
('Daniel', 'Walker', '1986-08-12', '123-555-7809', 'daniel.walker@example.com', '1717 Oak St, Springfield'),
('Karen', 'Hall', '1977-11-05', '123-555-7810', 'karen.hall@example.com', '1818 Pine St, Springfield'),
('Matthew', 'Allen', '1994-03-15', '123-555-7811', 'matthew.allen@example.com', '1919 Maple St, Springfield'),
('Lisa', 'Young', '1983-05-28', '123-555-7812', 'lisa.young@example.com', '2020 Cedar St, Springfield'),
('Steven', 'King', '1992-06-17', '123-555-7813', 'steven.king@example.com', '2121 Birch St, Springfield'),
('Angela', 'Wright', '1987-12-11', '123-555-7814', 'angela.wright@example.com', '2222 Elm St, Springfield'),
('Paul', 'Lopez', '1970-09-22', '123-555-7815', 'paul.lopez@example.com', '2323 Oak St, Springfield'),
('Dorothy', 'Scott', '1988-04-05', '123-555-7816', 'dorothy.scott@example.com', '2424 Pine St, Springfield'),
('Mark', 'Adams', '1969-07-18', '123-555-7817', 'mark.adams@example.com', '2525 Maple St, Springfield'),
('Cynthia', 'Baker', '1994-05-23', '123-555-7818', 'cynthia.baker@example.com', '2626 Cedar St, Springfield'),
('Andrew', 'Gonzalez', '1984-10-15', '123-555-7819', 'andrew.gonzalez@example.com', '2727 Birch St, Springfield'),
('Stephanie', 'Mitchell', '1976-02-11', '123-555-7820', 'stephanie.mitchell@example.com', '2828 Elm St, Springfield'),
('Brian', 'Carter', '1992-11-04', '123-555-7821', 'brian.carter@example.com', '2929 Oak St, Springfield'),
('Rachel', 'Robinson', '1978-03-13', '123-555-7822', 'rachel.robinson@example.com', '3030 Pine St, Springfield'),
('Kevin', 'Gordon', '1985-09-21', '123-555-7823', 'kevin.gordon@example.com', '3131 Maple St, Springfield'),
('Megan', 'Hernandez', '1990-12-10', '123-555-7824', 'megan.hernandez@example.com', '3232 Cedar St, Springfield'),
('Joshua', 'Simmons', '1984-04-06', '123-555-7825', 'joshua.simmons@example.com', '3333 Birch St, Springfield'),
('Tina', 'Wells', '1977-08-22', '123-555-7826', 'tina.wells@example.com', '3434 Elm St, Springfield'),
('George', 'Turner', '1989-06-30', '123-555-7827', 'george.turner@example.com', '3535 Oak St, Springfield'),
('Alice', 'Murphy', '1974-10-09', '123-555-7828', 'alice.murphy@example.com', '3636 Pine St, Springfield'),
('Ethan', 'Rivera', '1991-02-17', '123-555-7829', 'ethan.rivera@example.com', '3737 Maple St, Springfield'),
('Jennifer', 'Ward', '1986-07-25', '123-555-7830', 'jennifer.ward@example.com', '3838 Cedar St, Springfield'),
('Ryan', 'Cox', '1973-11-12', '123-555-7831', 'ryan.cox@example.com', '3939 Birch St, Springfield'),
('Jessica', 'Howard', '1992-05-19', '123-555-7832', 'jessica.howard@example.com', '4040 Elm St, Springfield'),
('Justin', 'James', '1980-04-23', '123-555-7833', 'justin.james@example.com', '4141 Oak St, Springfield'),
('Natalie', 'Watson', '1985-09-02', '123-555-7834', 'natalie.watson@example.com', '4242 Pine St, Springfield'),
('Jacob', 'Brooks', '1990-11-18', '123-555-7835', 'jacob.brooks@example.com', '4343 Maple St, Springfield'),
('Heather', 'Kelly', '1978-06-09', '123-555-7836', 'heather.kelly@example.com', '4444 Cedar St, Springfield'),
('Samuel', 'Bailey', '1989-02-20', '123-555-7837', 'samuel.bailey@example.com', '4545 Birch St, Springfield'),
('Olivia', 'Hughes', '1975-03-16', '123-555-7838', 'olivia.hughes@example.com', '4646 Elm St, Springfield'),
('Alexander', 'Price', '1991-12-04', '123-555-7839', 'alexander.price@example.com', '4747 Oak St, Springfield'),
('Sophia', 'Sanchez', '1988-07-10', '123-555-7840', 'sophia.sanchez@example.com', '4848 Pine St, Springfield'),
('Matthew', 'Reed', '1992-05-29', '123-555-7841', 'matthew.reed@example.com', '4949 Maple St, Springfield'),
('Zoe', 'Cook', '1977-10-15', '123-555-7842', 'zoe.cook@example.com', '5050 Cedar St, Springfield');


INSERT INTO Doctors (first_name, last_name, specialty, phone_number, email, office_hours) VALUES
('Alice', 'Williams', 'Cardiology', '555-123-4567', 'alice.williams@example.com', 'Mon-Fri 9:00-17:00'),
('Bob', 'Johnson', 'Neurology', '555-234-5678', 'bob.johnson@example.com', 'Mon-Fri 8:00-16:00'),
('Carol', 'Smith', 'Orthopedics', '555-345-6789', 'carol.smith@example.com', 'Mon-Fri 10:00-18:00'),
('David', 'Brown', 'Dermatology', '555-456-7890', 'david.brown@example.com', 'Mon-Fri 9:00-17:00'),
('Emily', 'Jones', 'Pediatrics', '555-567-8901', 'emily.jones@example.com', 'Mon-Fri 8:00-16:00'),
('Frank', 'Garcia', 'Internal Medicine', '555-678-9012', 'frank.garcia@example.com', 'Mon-Fri 9:00-17:00'),
('Grace', 'Miller', 'Gynecology', '555-789-0123', 'grace.miller@example.com', 'Mon-Fri 8:00-16:00'),
('Henry', 'Wilson', 'Ophthalmology', '555-890-1234', 'henry.wilson@example.com', 'Mon-Fri 10:00-18:00'),
('Irene', 'Moore', 'Urology', '555-901-2345', 'irene.moore@example.com', 'Mon-Fri 9:00-17:00'),
('Jack', 'Taylor', 'ENT', '555-012-3456', 'jack.taylor@example.com', 'Mon-Fri 8:00-16:00'),
('Karen', 'Anderson', 'Endocrinology', '555-123-4568', 'karen.anderson@example.com', 'Mon-Fri 9:00-17:00'),
('Larry', 'Thomas', 'Rheumatology', '555-234-5679', 'larry.thomas@example.com', 'Mon-Fri 8:00-16:00'),
('Martha', 'Jackson', 'Gastroenterology', '555-345-6780', 'martha.jackson@example.com', 'Mon-Fri 10:00-18:00'),
('Nancy', 'White', 'Oncology', '555-456-7891', 'nancy.white@example.com', 'Mon-Fri 9:00-17:00'),
('Oscar', 'Harris', 'Nephrology', '555-567-8902', 'oscar.harris@example.com', 'Mon-Fri 8:00-16:00'),
('Paul', 'Martin', 'Pulmonology', '555-678-9013', 'paul.martin@example.com', 'Mon-Fri 10:00-18:00'),
('Quincy', 'Lee', 'Hematology', '555-789-0124', 'quincy.lee@example.com', 'Mon-Fri 9:00-17:00'),
('Rachel', 'Walker', 'Anesthesiology', '555-890-1235', 'rachel.walker@example.com', 'Mon-Fri 8:00-16:00'),
('Steve', 'Young', 'Pathology', '555-901-2346', 'steve.young@example.com', 'Mon-Fri 10:00-18:00'),
('Tina', 'Allen', 'Radiology', '555-012-3457', 'tina.allen@example.com', 'Mon-Fri 9:00-17:00'),
('Ulysses', 'King', 'Surgery', '555-123-4569', 'ulysses.king@example.com', 'Mon-Fri 8:00-16:00'),
('Vera', 'Scott', 'Emergency Medicine', '555-234-5680', 'vera.scott@example.com', 'Mon-Fri 10:00-18:00'),
('William', 'Adams', 'Family Medicine', '555-345-6781', 'william.adams@example.com', 'Mon-Fri 9:00-17:00'),
('Xena', 'Baker', 'Addiction Medicine', '555-456-7892', 'xena.baker@example.com', 'Mon-Fri 8:00-16:00'),
('Yvonne', 'Gonzalez', 'Sports Medicine', '555-567-8903', 'yvonne.gonzalez@example.com', 'Mon-Fri 10:00-18:00'),
('Zach', 'Nelson', 'Sleep Medicine', '555-678-9014', 'zach.nelson@example.com', 'Mon-Fri 9:00-17:00'),
('Anna', 'Morris', 'Immunology', '555-789-0125', 'anna.morris@example.com', 'Mon-Fri 8:00-16:00'),
('Ben', 'Murphy', 'Plastic Surgery', '555-890-1236', 'ben.murphy@example.com', 'Mon-Fri 10:00-18:00'),
('Clara', 'Rogers', 'Cardiothoracic Surgery', '555-901-2347', 'clara.rogers@example.com', 'Mon-Fri 9:00-17:00'),
('Derek', 'Phillips', 'Vascular Surgery', '555-012-3458', 'derek.phillips@example.com', 'Mon-Fri 8:00-16:00'),
('Eleanor', 'Cox', 'Palliative Care', '555-123-4570', 'eleanor.cox@example.com', 'Mon-Fri 10:00-18:00'),
('Franklin', 'Ward', 'Neurointerventional Surgery', '555-234-5681', 'franklin.ward@example.com', 'Mon-Fri 9:00-17:00'),
('Gloria', 'James', 'Medical Genetics', '555-345-6782', 'gloria.james@example.com', 'Mon-Fri 8:00-16:00'),
('Henry', 'Reed', 'Allergy and Immunology', '555-456-7893', 'henry.reed@example.com', 'Mon-Fri 10:00-18:00'),
('Iris', 'Cook', 'Infectious Disease', '555-567-8904', 'iris.cook@example.com', 'Mon-Fri 9:00-17:00'),
('John', 'Bell', 'Preventive Medicine', '555-678-9015', 'john.bell@example.com', 'Mon-Fri 8:00-16:00'),
('Katherine', 'Morris', 'Geriatrics', '555-789-0126', 'katherine.morris@example.com', 'Mon-Fri 10:00-18:00'),
('Liam', 'Davis', 'Nuclear Medicine', '555-890-1237', 'liam.davis@example.com', 'Mon-Fri 9:00-17:00'),
('Mia', 'Bennett', 'Occupational Medicine', '555-901-2348', 'mia.bennett@example.com', 'Mon-Fri 8:00-16:00'),
('Nathan', 'Harris', 'Pain Medicine', '555-012-3459', 'nathan.harris@example.com', 'Mon-Fri 10:00-18:00'),
('Olivia', 'Graham', 'Psychiatry', '555-123-4571', 'olivia.graham@example.com', 'Mon-Fri 9:00-17:00'),
('Paul', 'Ross', 'Rehabilitation Medicine', '555-234-5682', 'paul.ross@example.com', 'Mon-Fri 8:00-16:00'),
('Quinn', 'Powell', 'Naturopathy', '555-345-6783', 'quinn.powell@example.com', 'Mon-Fri 10:00-18:00'),
('Rachel', 'Miller', 'Counseling', '555-456-7894', 'rachel.miller@example.com', 'Mon-Fri 9:00-17:00'),
('Samuel', 'Green', 'Aesthetic Medicine', '555-567-8905', 'samuel.green@example.com', 'Mon-Fri 8:00-16:00'),
('Tina', 'Long', 'Emergency Medicine', '555-678-9016', 'tina.long@example.com', 'Mon-Fri 10:00-18:00'),
('Ursula', 'Morris', 'Acupuncture', '555-789-0127', 'ursula.morris@example.com', 'Mon-Fri 9:00-17:00'),
('Victor', 'Powell', 'Holistic Medicine', '555-890-1238', 'victor.powell@example.com', 'Mon-Fri 8:00-16:00'),
('Wendy', 'Walker', 'Family Medicine', '555-901-2349', 'wendy.walker@example.com', 'Mon-Fri 10:00-18:00'),
('Xander', 'Adams', 'Integrative Medicine', '555-012-3460', 'xander.adams@example.com', 'Mon-Fri 9:00-17:00');


INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason_for_visit) VALUES
(1, 1, '2024-10-01 09:00:00', 'Routine Checkup'),
(2, 2, '2024-10-01 10:00:00', 'Neurological Evaluation'),
(3, 3, '2024-10-01 11:00:00', 'Back Pain'),
(4, 4, '2024-10-02 09:00:00', 'Skin Rash'),
(5, 5, '2024-10-02 10:00:00', 'Flu Symptoms'),
(6, 6, '2024-10-02 11:00:00', 'Hypertension'),
(7, 7, '2024-10-03 09:00:00', 'Pregnancy Checkup'),
(8, 8, '2024-10-03 10:00:00', 'Vision Test'),
(9, 9, '2024-10-03 11:00:00', 'Urinary Issues'),
(10, 10, '2024-10-04 09:00:00', 'Hearing Test'),
(11, 11, '2024-10-04 10:00:00', 'Endocrine Disorders'),
(12, 12, '2024-10-04 11:00:00', 'Rheumatic Pain'),
(13, 13, '2024-10-05 09:00:00', 'Gastrointestinal Problems'),
(14, 14, '2024-10-05 10:00:00', 'Cancer Screening'),
(15, 15, '2024-10-05 11:00:00', 'Kidney Issues'),
(16, 16, '2024-10-06 09:00:00', 'Respiratory Checkup'),
(17, 17, '2024-10-06 10:00:00', 'Blood Test'),
(18, 18, '2024-10-06 11:00:00', 'Joint Pain'),
(19, 19, '2024-10-07 09:00:00', 'Allergy Testing'),
(20, 20, '2024-10-07 10:00:00', 'Weight Management'),
(21, 21, '2024-10-07 11:00:00', 'Mental Health Consultation'),
(22, 22, '2024-10-08 09:00:00', 'Pediatric Checkup'),
(23, 23, '2024-10-08 10:00:00', 'Orthopedic Assessment'),
(24, 24, '2024-10-08 11:00:00', 'Skin Examination'),
(25, 25, '2024-10-09 09:00:00', 'Travel Vaccination'),
(26, 26, '2024-10-09 10:00:00', 'Chronic Disease Management'),
(27, 27, '2024-10-09 11:00:00', 'Acid Reflux'),
(28, 28, '2024-10-10 09:00:00', 'Wellness Check'),
(29, 29, '2024-10-10 10:00:00', 'Sports Medicine'),
(30, 30, '2024-10-10 11:00:00', 'Allergy Consultation'),
(31, 31, '2024-10-11 09:00:00', 'Routine Screening'),
(32, 32, '2024-10-11 10:00:00', 'Diabetes Check'),
(33, 33, '2024-10-11 11:00:00', 'Menstrual Issues'),
(34, 34, '2024-10-12 09:00:00', 'Pre-Operative Evaluation'),
(35, 35, '2024-10-12 10:00:00', 'Chronic Fatigue'),
(36, 36, '2024-10-12 11:00:00', 'Thyroid Disorders'),
(37, 37, '2024-10-13 09:00:00', 'Cardiac Checkup'),
(38, 38, '2024-10-13 10:00:00', 'Foot Pain'),
(39, 39, '2024-10-13 11:00:00', 'Hernia'),
(40, 40, '2024-10-14 09:00:00', 'HIV Screening'),
(41, 41, '2024-10-14 10:00:00', 'Cancer Follow-Up'),
(42, 42, '2024-10-14 11:00:00', 'Back Injury'),
(43, 43, '2024-10-15 09:00:00', 'Pregnancy Test'),
(44, 44, '2024-10-15 10:00:00', 'Chronic Pain'),
(45, 45, '2024-10-15 11:00:00', 'Digestive Issues'),
(46, 46, '2024-10-16 09:00:00', 'Nutrition Counseling'),
(47, 47, '2024-10-16 10:00:00', 'Blood Pressure Check'),
(48, 48, '2024-10-16 11:00:00', 'Urinary Tract Infection'),
(49, 49, '2024-10-17 09:00:00', 'Menopause Consultation'),
(50, 50, '2024-10-17 10:00:00', 'Pre-Natal Care');


INSERT INTO MedicalHistories (patient_id, diagnosis, treatment, diagnosis_date) VALUES
(1, 'Hypertension', 'Medication', '2022-01-15'),
(2, 'Type 2 Diabetes', 'Insulin Therapy', '2021-03-22'),
(3, 'Asthma', 'Inhalers', '2020-05-10'),
(4, 'Chronic Back Pain', 'Physical Therapy', '2019-07-12'),
(5, 'Skin Rash', 'Topical Cream', '2023-02-18'),
(6, 'Flu', 'Antiviral Medication', '2024-01-10'),
(7, 'Hyperlipidemia', 'Statins', '2022-04-05'),
(8, 'Pregnancy', 'Prenatal Care', '2024-08-20'),
(9, 'Urinary Tract Infection', 'Antibiotics', '2023-12-12'),
(10, 'Hearing Loss', 'Hearing Aids', '2021-06-25'),
(11, 'Endocrine Disorder', 'Hormone Therapy', '2022-09-15'),
(12, 'Rheumatoid Arthritis', 'Disease-Modifying Antirheumatic Drugs', '2020-11-03'),
(13, 'Gastroesophageal Reflux Disease', 'Proton Pump Inhibitors', '2021-07-07'),
(14, 'Breast Cancer', 'Chemotherapy', '2022-03-14'),
(15, 'Kidney Stones', 'Surgical Removal', '2023-10-01'),
(16, 'Chronic Obstructive Pulmonary Disease', 'Inhaled Steroids', '2020-08-18'),
(17, 'Anemia', 'Iron Supplements', '2021-09-10'),
(18, 'Osteoporosis', 'Bone Density Medication', '2019-12-21'),
(19, 'Allergy', 'Antihistamines', '2024-01-05'),
(20, 'Obesity', 'Lifestyle Changes', '2022-06-30'),
(21, 'Mental Health Issues', 'Counseling', '2023-04-15'),
(22, 'Pediatric Asthma', 'Bronchodilators', '2021-02-20'),
(23, 'Orthopedic Issues', 'Surgery', '2022-11-22'),
(24, 'Melanoma', 'Surgical Excision', '2023-08-15'),
(25, 'Travel Vaccinations', 'Vaccinations', '2024-07-10'),
(26, 'Chronic Disease', 'Regular Monitoring', '2022-05-18'),
(27, 'Gastritis', 'Antacids', '2020-10-09'),
(28, 'Hypertension', 'Lifestyle Modifications', '2021-11-25'),
(29, 'Sports Injury', 'Rest and Rehabilitation', '2023-01-20'),
(30, 'Allergy to Penicillin', 'Avoidance', '2024-03-12'),
(31, 'Routine Checkup', 'General Health Assessment', '2023-06-30'),
(32, 'Type 1 Diabetes', 'Insulin Therapy', '2022-02-11'),
(33, 'Menstrual Irregularities', 'Hormonal Treatment', '2023-07-17'),
(34, 'Chronic Fatigue', 'Lifestyle Changes', '2022-12-05'),
(35, 'Thyroid Disorder', 'Thyroid Medication', '2020-09-12'),
(36, 'Cardiac Issues', 'Medication and Lifestyle Changes', '2021-08-20'),
(37, 'Foot Pain', 'Orthotics', '2023-05-15'),
(38, 'Hernia', 'Surgical Repair', '2022-04-21'),
(39, 'HIV Positive', 'Antiretroviral Therapy', '2021-10-03'),
(40, 'Cancer Follow-Up', 'Regular Checkups', '2023-09-22'),
(41, 'Pregnancy Test Positive', 'Routine Prenatal Care', '2024-06-05'),
(42, 'Chronic Pain', 'Pain Management', '2021-01-12'),
(43, 'Digestive Issues', 'Dietary Changes', '2022-02-25'),
(44, 'Nutritional Deficiencies', 'Nutritional Supplements', '2023-03-18'),
(45, 'High Blood Pressure', 'Medication', '2020-06-30'),
(46, 'Urinary Tract Infection', 'Increased Hydration and Antibiotics', '2024-01-25'),
(47, 'Menopause', 'Hormone Replacement Therapy', '2021-07-20'),
(48, 'Sleep Apnea', 'CPAP Therapy', '2022-11-10'),
(49, 'Acne', 'Topical Treatment', '2023-04-01'),
(50, 'Holistic Health', 'Alternative Therapies', '2024-02-10');


INSERT INTO AppointmentSlots (doctor_id, slot_date, slot_start_time, slot_end_time) VALUES
(1, '2024-10-01', '09:00:00', '09:30:00'),
(1, '2024-10-01', '09:30:00', '10:00:00'),
(1, '2024-10-01', '10:00:00', '10:30:00'),
(1, '2024-10-01', '10:30:00', '11:00:00'),
(1, '2024-10-01', '11:00:00', '11:30:00'),
(2, '2024-10-01', '08:00:00', '08:30:00'),
(2, '2024-10-01', '08:30:00', '09:00:00'),
(2, '2024-10-01', '09:00:00', '09:30:00'),
(2, '2024-10-01', '09:30:00', '10:00:00'),
(2, '2024-10-01', '10:00:00', '10:30:00'),
(3, '2024-10-02', '13:00:00', '13:30:00'),
(3, '2024-10-02', '13:30:00', '14:00:00'),
(3, '2024-10-02', '14:00:00', '14:30:00'),
(3, '2024-10-02', '14:30:00', '15:00:00'),
(3, '2024-10-02', '15:00:00', '15:30:00'),
(4, '2024-10-03', '10:00:00', '10:30:00'),
(4, '2024-10-03', '10:30:00', '11:00:00'),
(4, '2024-10-03', '11:00:00', '11:30:00'),
(4, '2024-10-03', '11:30:00', '12:00:00'),
(4, '2024-10-03', '12:00:00', '12:30:00'),
(5, '2024-10-04', '08:00:00', '08:30:00'),
(5, '2024-10-04', '08:30:00', '09:00:00'),
(5, '2024-10-04', '09:00:00', '09:30:00'),
(5, '2024-10-04', '09:30:00', '10:00:00'),
(5, '2024-10-04', '10:00:00', '10:30:00'),
(6, '2024-10-05', '11:00:00', '11:30:00'),
(6, '2024-10-05', '11:30:00', '12:00:00'),
(6, '2024-10-05', '12:00:00', '12:30:00'),
(6, '2024-10-05', '12:30:00', '13:00:00'),
(6, '2024-10-05', '13:00:00', '13:30:00'),
(7, '2024-10-06', '14:00:00', '14:30:00'),
(7, '2024-10-06', '14:30:00', '15:00:00'),
(7, '2024-10-06', '15:00:00', '15:30:00'),
(7, '2024-10-06', '15:30:00', '16:00:00'),
(7, '2024-10-06', '16:00:00', '16:30:00'),
(8, '2024-10-07', '09:00:00', '09:30:00'),
(8, '2024-10-07', '09:30:00', '10:00:00'),
(8, '2024-10-07', '10:00:00', '10:30:00'),
(8, '2024-10-07', '10:30:00', '11:00:00'),
(8, '2024-10-07', '11:00:00', '11:30:00'),
(9, '2024-10-08', '08:00:00', '08:30:00'),
(9, '2024-10-08', '08:30:00', '09:00:00'),
(9, '2024-10-08', '09:00:00', '09:30:00'),
(9, '2024-10-08', '09:30:00', '10:00:00'),
(9, '2024-10-08', '10:00:00', '10:30:00'),
(10, '2024-10-09', '13:00:00', '13:30:00'),
(10, '2024-10-09', '13:30:00', '14:00:00'),
(10, '2024-10-09', '14:00:00', '14:30:00'),
(10, '2024-10-09', '14:30:00', '15:00:00'),
(10, '2024-10-09', '15:00:00', '15:30:00'),
(11, '2024-10-10', '10:00:00', '10:30:00'),
(11, '2024-10-10', '10:30:00', '11:00:00'),
(11, '2024-10-10', '11:00:00', '11:30:00'),
(11, '2024-10-10', '11:30:00', '12:00:00'),
(11, '2024-10-10', '12:00:00', '12:30:00'),
(12, '2024-10-11', '14:00:00', '14:30:00'),
(12, '2024-10-11', '14:30:00', '15:00:00'),
(12, '2024-10-11', '15:00:00', '15:30:00'),
(12, '2024-10-11', '15:30:00', '16:00:00'),
(12, '2024-10-11', '16:00:00', '16:30:00'),
(13, '2024-10-12', '08:00:00', '08:30:00'),
(13, '2024-10-12', '08:30:00', '09:00:00'),
(13, '2024-10-12', '09:00:00', '09:30:00'),
(13, '2024-10-12', '09:30:00', '10:00:00'),
(13, '2024-10-12', '10:00:00', '10:30:00'),
(14, '2024-10-13', '13:00:00', '13:30:00'),
(14, '2024-10-13', '13:30:00', '14:00:00'),
(14, '2024-10-13', '14:00:00', '14:30:00'),
(14, '2024-10-13', '14:30:00', '15:00:00'),
(14, '2024-10-13', '15:00:00', '15:30:00'),
(15, '2024-10-14', '09:00:00', '09:30:00'),
(15, '2024-10-14', '09:30:00', '10:00:00'),
(15, '2024-10-14', '10:00:00', '10:30:00'),
(15, '2024-10-14', '10:30:00', '11:00:00'),
(15, '2024-10-14', '11:00:00', '11:30:00'),
(16, '2024-10-15', '08:00:00', '08:30:00'),
(16, '2024-10-15', '08:30:00', '09:00:00'),
(16, '2024-10-15', '09:00:00', '09:30:00'),
(16, '2024-10-15', '09:30:00', '10:00:00'),
(16, '2024-10-15', '10:00:00', '10:30:00'),
(17, '2024-10-16', '13:00:00', '13:30:00'),
(17, '2024-10-16', '13:30:00', '14:00:00'),
(17, '2024-10-16', '14:00:00', '14:30:00'),
(17, '2024-10-16', '14:30:00', '15:00:00'),
(17, '2024-10-16', '15:00:00', '15:30:00'),
(18, '2024-10-17', '10:00:00', '10:30:00'),
(18, '2024-10-17', '10:30:00', '11:00:00'),
(18, '2024-10-17', '11:00:00', '11:30:00'),
(18, '2024-10-17', '11:30:00', '12:00:00'),
(18, '2024-10-17', '12:00:00', '12:30:00'),
(19, '2024-10-18', '14:00:00', '14:30:00'),
(19, '2024-10-18', '14:30:00', '15:00:00'),
(19, '2024-10-18', '15:00:00', '15:30:00'),
(19, '2024-10-18', '15:30:00', '16:00:00'),
(19, '2024-10-18', '16:00:00', '16:30:00'),
(20, '2024-10-19', '08:00:00', '08:30:00'),
(20, '2024-10-19', '08:30:00', '09:00:00'),
(20, '2024-10-19', '09:00:00', '09:30:00'),
(20, '2024-10-19', '09:30:00', '10:00:00'),
(20, '2024-10-19', '10:00:00', '10:30:00');


Select * from appointmentslots

DELIMITER //
CREATE PROCEDURE AddPatient(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_dob DATE,
    IN p_phone_number VARCHAR(15),
    IN p_email VARCHAR(100),
    IN p_address VARCHAR(255)
)
BEGIN
    INSERT INTO Patients (first_name, last_name, date_of_birth, phone_number, email, address)
    VALUES (p_first_name, p_last_name, p_dob, p_phone_number, p_email, p_address);
END //
DELIMITER ;

CALL AddPatient(
    'John',                -- p_first_name
    'Doe',                 -- p_last_name
    '1985-06-15',          -- p_dob
    '123-456-7890',        -- p_phone_number
    'john.doe@example.com',-- p_email
    '123 Elm Street'       -- p_address
);


DELIMITER //
CREATE PROCEDURE AddDoctor(
    IN d_first_name VARCHAR(50),
    IN d_last_name VARCHAR(50),
    IN d_specialty VARCHAR(50),
    IN d_phone_number VARCHAR(15),
    IN d_email VARCHAR(100),
    IN d_office_hours VARCHAR(50)
)
BEGIN
    INSERT INTO Doctors (first_name, last_name, specialty, phone_number, email, office_hours)
    VALUES (d_first_name, d_last_name, d_specialty, d_phone_number, d_email, d_office_hours);
END //
DELIMITER ;

CALL AddDoctor(
    'Jane',                -- d_first_name
    'Smith',               -- d_last_name
    'Cardiology',          -- d_specialty
    '098-765-4321',        -- d_phone_number
    'jane.smith@example.com',-- d_email
    'Mon-Fri 09:00-17:00' -- d_office_hours
);



DELIMITER //
CREATE PROCEDURE BookAppointment(
    IN app_patient_id INT,
    IN app_doctor_id INT,
    IN app_date DATETIME,
    IN app_reason VARCHAR(255)
)
BEGIN
    INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason_for_visit)
    VALUES (app_patient_id, app_doctor_id, app_date, app_reason);
END //
DELIMITER ;

CALL BookAppointment(
    1,                     -- app_patient_id
    2,                     -- app_doctor_id
    '2024-10-01 10:00:00', -- app_date
    'Routine Checkup'      -- app_reason
);


DELIMITER //
CREATE PROCEDURE UpdateMedicalHistory(
    IN mh_patient_id INT,
    IN mh_diagnosis VARCHAR(255),
    IN mh_treatment VARCHAR(255),
    IN mh_diagnosis_date DATE
)
BEGIN
    INSERT INTO MedicalHistories (patient_id, diagnosis, treatment, diagnosis_date)
    VALUES (mh_patient_id, mh_diagnosis, mh_treatment, mh_diagnosis_date);
END //
DELIMITER ;

CALL UpdateMedicalHistory(
    1,                     -- mh_patient_id
    'Hypertension',        -- mh_diagnosis
    'Medication',          -- mh_treatment
    '2022-01-15'           -- mh_date_of_diagnosis
);



DELIMITER //
CREATE PROCEDURE AddAppointmentSlot(
    IN slot_doctor_id INT,
    IN slot_date DATE,
    IN slot_start_time TIME,
    IN slot_end_time TIME
)
BEGIN
    INSERT INTO AppointmentSlots (doctor_id, slot_date, slot_start_time, slot_end_time)
    VALUES (slot_doctor_id, slot_date, slot_start_time, slot_end_time);
END //
DELIMITER ;

CALL AddAppointmentSlot(
    1,                     -- slot_doctor_id
    '2024-10-01',          -- slot_date
    '09:00:00',            -- slot_start_time
    '09:30:00'             -- slot_end_time
);


DELIMITER //
CREATE PROCEDURE GetAvailableSlots(
    IN slot_doctor_id INT,
    IN slot_date DATE
)
BEGIN
    SELECT slot_start_time, slot_end_time
    FROM AppointmentSlots
    WHERE doctor_id = slot_doctor_id
    AND slot_date = slot_date
    AND NOT EXISTS (
        SELECT 1
        FROM Appointments
        WHERE doctor_id = slot_doctor_id
        AND appointment_date BETWEEN slot_start_time AND slot_end_time
        AND DATE(appointment_date) = slot_date
    );
END //
DELIMITER ;

CALL GetAvailableSlots(
    1,                     -- slot_doctor_id
    '2024-10-01'           -- slot_date
);



DELIMITER //
CREATE PROCEDURE GetMedicalHistory(
    IN history_patient_id INT
)
BEGIN
    SELECT diagnosis, treatment, diagnosis_date
    FROM MedicalHistories
    WHERE patient_id = history_patient_id;
END //
DELIMITER ;

CALL GetMedicalHistory(
    3                    -- history_patient_id
);


DELIMITER //
CREATE PROCEDURE CancelAppointment(
    IN app_id INT
)
BEGIN
    DELETE FROM Appointments
    WHERE appointment_id = app_id;
END //
DELIMITER ;

CALL CancelAppointment(
    1                      -- app_id
);


