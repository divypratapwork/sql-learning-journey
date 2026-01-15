/*
Problem:
Get all orders that do not have matching customers.
*/

SELECT *
FROM orders o
LEFT JOIN customers c
ON c.id = o.customer_id
WHERE c.id IS NULL;
