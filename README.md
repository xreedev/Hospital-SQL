# Hospital-SQL

*A database project for managing hospital records using SQL.*

## Table of Contents
- [Introduction](#introduction)
- [Technologies Used](#technologies-used)
- [Database Structure](#database-structure)

## Introduction
`Hospital-SQL` is a structured database designed to manage hospital operations, including patient records, staff, medical procedures, and equipment. It uses a relational database model, offering efficient data organization and querying capabilities.

Here's the corrected version with **PostgreSQL**:

---

### Technologies Used
- **SQL**: For creating and managing relational database tables.
- **PostgreSQL**: As the database management system.
- **DBeaver**: For visualizing and managing the database.
- **Postman**: For API testing and interacting with the database.

![Technology Stack](https://img.shields.io/badge/SQL-Relational-brightgreen.svg)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13.x-brightgreen.svg)
![DBeaver](https://img.shields.io/badge/DBeaver-21.x-brightgreen.svg)

---

## Database Structure
```bash
Hospital-SQL
├───patients               # Patient information and records
├───staff                  # Doctors, nurses, and other staff
├───procedures             # Medical procedures and surgeries
├───equipment              # Medical equipment and its usage
└───appointments           # Appointments and schedule management
```

Here’s an updated **Database Structure** section with the structure of each table in your `Hospital-SQL` project:

---

## Database Structure

### Patients Table
| Column          | Data Type    | Description                 |
|-----------------|--------------|-----------------------------|
| `patient_id`    | INT          | Primary key, auto-increment  |
| `first_name`    | VARCHAR(255) | Patient's first name         |
| `last_name`     | VARCHAR(255) | Patient's last name          |
| `dob`           | DATE         | Date of birth                |
| `gender`        | VARCHAR(10)  | Gender                       |
| `address`       | VARCHAR(255) | Patient's address            |
| `phone_number`  | VARCHAR(15)  | Contact number               |

### Staff Table
| Column          | Data Type    | Description                 |
|-----------------|--------------|-----------------------------|
| `staff_id`      | INT          | Primary key, auto-increment  |
| `first_name`    | VARCHAR(255) | Staff member's first name    |
| `last_name`     | VARCHAR(255) | Staff member's last name     |
| `role`          | VARCHAR(50)  | Doctor, Nurse, Admin, etc.   |
| `department`    | VARCHAR(100) | Department they belong to    |
| `salary`        | DECIMAL(10,2)| Monthly salary               |

### Procedures Table
| Column          | Data Type    | Description                  |
|-----------------|--------------|------------------------------|
| `procedure_id`  | INT          | Primary key, auto-increment   |
| `name`          | VARCHAR(255) | Name of the procedure         |
| `description`   | TEXT         | Procedure description         |
| `cost`          | DECIMAL(10,2)| Cost of the procedure         |
| `duration`      | INT          | Duration in minutes           |

### Equipment Table
| Column          | Data Type    | Description                  |
|-----------------|--------------|------------------------------|
| `equipment_id`  | INT          | Primary key, auto-increment   |
| `name`          | VARCHAR(255) | Name of the equipment         |
| `quantity`      | INT          | Available quantity            |
| `cost_per_use`  | DECIMAL(10,2)| Cost per use                  |
| `total_cost`    | DECIMAL(10,2)| Total cost                    |

### Appointments Table
| Column          | Data Type    | Description                  |
|-----------------|--------------|------------------------------|
| `appointment_id`| INT          | Primary key, auto-increment   |
| `patient_id`    | INT          | Foreign key referencing `patients` |
| `staff_id`      | INT          | Foreign key referencing `staff`    |
| `procedure_id`  | INT          | Foreign key referencing `procedures` |
| `appointment_date`| DATE       | Date of the appointment       |
| `status`        | VARCHAR(50)  | Scheduled, Completed, Canceled|

---
