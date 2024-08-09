CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE procedure (
    procedure_id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255) NOT NULL,
    duration INTEGER NOT NULL
);
CREATE TABLE patient_procedure (
    id BIGSERIAL PRIMARY KEY,
    start_date TIMESTAMP NOT NULL,
    patient_id BIGINT NOT NULL,
    procedure_id BIGINT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (procedure_id) REFERENCES procedure(procedure_id) ON DELETE CASCADE
);
CREATE TABLE equipments (
    equip_id BIGSERIAL PRIMARY KEY,
    equip_name VARCHAR(255) NOT NULL,
    cost_per_use INTEGER NOT NULL
);

CREATE TABLE staff (
    staff_id BIGSERIAL PRIMARY KEY,
    staff_name VARCHAR(255) NOT NULL
);
CREATE TABLE staff_procedure_salary (
    id BIGSERIAL PRIMARY KEY,
    salary_per_hour INTEGER NOT NULL,
    staff_id BIGINT NOT NULL,
    procedure_id BIGINT NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id) ON DELETE CASCADE,
    FOREIGN KEY (procedure_id) REFERENCES procedure(procedure_id) ON DELETE CASCADE
);

CREATE TABLE quantity (
    id BIGSERIAL PRIMARY KEY,
    quantity INTEGER NOT NULL,  -- Note the correction from "quanity" to "quantity"
    equipment_id BIGINT NOT NULL,
    FOREIGN KEY (equipment_id) REFERENCES equipments(equip_id) ON DELETE CASCADE
);


