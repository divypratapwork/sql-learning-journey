/*
==================================================
Query: Delete Specific Customer
==================================================

Problem Statement:
Delete a customer with a specific id.

Concepts Used:
- DELETE
- WHERE

Approach:
Remove only the record where id = 6.

Outcome:
The selected customer record is deleted.
*/

DELETE FROM customers
WHERE id = 6;

-- Verify deletion
SELECT *
FROM customers;
