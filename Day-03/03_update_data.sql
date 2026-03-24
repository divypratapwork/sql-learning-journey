/*
==================================================
Query: Update Customer Data
==================================================

Problem Statement:
Update country and score for a specific customer.

Concepts Used:
- UPDATE
- WHERE

Approach:
Modify only the record where id = 7.

Outcome:
Customer data is updated successfully.
*/

UPDATE customers
SET country = 'UK',
    score = 101
WHERE id = 7;

-- Verify update
SELECT *
FROM customers;
