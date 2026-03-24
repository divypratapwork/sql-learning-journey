/*
==================================================
Query: Copy Data Between Tables
==================================================

Problem Statement:
Copy data from 'customers' table into 'person' table.

Concepts Used:
- INSERT INTO ... SELECT

Approach:
Select required columns from customers and insert into person.
Use NULL and default values where needed.

Outcome:
Customer data is successfully transferred to the person table.
*/

INSERT INTO person (id, person_name, birth_date, phone)
SELECT
    id,
    first_name,
    NULL AS birth_date,
    'UNKNOWN' AS phone
FROM customers;

-- Verify copied data
SELECT *
FROM person;
