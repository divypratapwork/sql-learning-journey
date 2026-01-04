/*
Problem:
Update customer details for a specific customer.

Concepts used:
UPDATE, WHERE

Approach:
Update country and score for the customer with id 7.

Result:
Customer data is modified successfully.
*/

UPDATE customers
SET country = 'UK',
    score = 101
WHERE id = 7;

SELECT *
FROM customers;
