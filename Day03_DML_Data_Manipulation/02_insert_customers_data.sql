/*
Problem:
Insert new customer records into the customers table.

Concepts used:
INSERT INTO, VALUES

Approach:
Insert multiple customer rows in a single statement.

Result:
New customers are added to the customers table.
*/

INSERT INTO customers (id, first_name, country, score)
VALUES
    (7, 'Divy', 'India', 100),
    (8, 'Ritu', 'India', 100);

SELECT *
FROM customers;
