/*
Problem:
Copy data from customers table into person table.

Concepts used:
INSERT INTO ... SELECT

Approach:
Select required columns from customers and insert them into person.

Result:
Customer data is copied into the person table.
*/

INSERT INTO person (id, person_name, birth_date, phone)
SELECT
    id,
    first_name,
    NULL,
    'UNKNOWN'
FROM customers;

SELECT *
FROM person;
