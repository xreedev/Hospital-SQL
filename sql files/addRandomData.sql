-- Insert Data into `patients` Table
INSERT INTO patients (name) 
VALUES 
('John Doe'),
('Jane Smith'),
('Emily Johnson'),
('Michael Brown'),
('Sarah Davis'),
('William Wilson'),
('Olivia Moore'),
('Liam Taylor'),
('Sophia Anderson'),
('James Thomas');

-- Insert Data into `equipments` Table
INSERT INTO equipments (equip_name, cost_per_use) 
VALUES 
('MRI Machine', 500),
('X-Ray Machine', 150),
('Ultrasound Machine', 200),
('CT Scanner', 300),
('ECG Machine', 100),
('Ventilator', 1200),
('Anesthesia Machine', 800),
('Infusion Pump', 250),
('Defibrillator', 1500),
('Blood Pressure Monitor', 80);

-- Insert Data into `procedure` Table
INSERT INTO procedure (name, duration) 
VALUES 
('Surgery', 120),
('Consultation', 30),
('X-Ray', 15),
('Ultrasound', 20),
('CT Scan', 25),
('ECG', 10),
('Blood Test', 5),
('Anesthesia', 30),
('Ventilation Check', 15),
('Defibrillation', 10);

-- Insert Data into `staff` Table
INSERT INTO staff (staff_name) 
VALUES 
('Dr. Smith'),
('Nurse Jones'),
('Dr. Brown'),
('Dr. Johnson'),
('Nurse Adams'),
('Nurse White'),
('Dr. Lee'),
('Dr. Taylor'),
('Nurse Harris'),
('Nurse Martin');

-- Insert Data into `staff_procedure_salary` Table
INSERT INTO staff_procedure_salary (salary_per_hour, staff_id, procedure_id) 
VALUES 
(1000, 1, 1),
(300, 1, 2),
(50, 2, 3),
(60, 2, 4),
(1200, 3, 5),
(100, 3, 6),
(200, 4, 7),
(800, 4, 8),
(70, 5, 9),
(90, 6, 10);

-- Insert Data into `quantity` Table
INSERT INTO quantity (quantity, equipment_id) 
VALUES 
(5, 1),
(10, 2),
(8, 3),
(12, 4),
(15, 5),
(4, 6),
(7, 7),
(10, 8),
(6, 9),
(20, 10);

