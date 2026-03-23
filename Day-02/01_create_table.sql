/*
==================================================
Query: Create 'persons' Table
==================================================

Problem Statement:
Create a table named 'persons' with columns:
- id
- person_name
- birth_date
- phone

Concepts Used:
- CREATE TABLE
- PRIMARY KEY
- NOT NULL constraint
- Data Types (INT, VARCHAR, DATE)

Approach:
Define table structure with appropriate data types and constraints.
Set 'id' as the primary key to uniquely identify each record.

Outcome:
A new 'persons' table is successfully created.
*/

CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT primary_key_persons PRIMARY KEY (id)
);

-- Verify table structure
SELECT *
FROM persons;
