/*
==================================================
Query: Insert Customer Records
==================================================

Problem Statement:
Insert new records into the customers table.

Concepts Used:
- INSERT INTO
- VALUES

Approach:
Insert multiple rows in a single query.

Outcome:
New customer records are added to the table.
*/

INSERT INTO customers (id, first_name, country, score)
VALUES
    (7, 'Divy', 'India', 100),
    (8, 'Ritu', 'India', 100);

-- Verify inserted data
SELECT *
FROM customers;
