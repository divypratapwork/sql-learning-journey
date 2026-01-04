/*
Problem:
Delete a specific customer from the customers table.

Concepts used:
DELETE, WHERE

Approach:
Remove the customer record with id equal to 6.

Result:
Customer with id 6 is deleted from the table.
*/

DELETE FROM customers
WHERE id = 6;

SELECT *
FROM customers;
