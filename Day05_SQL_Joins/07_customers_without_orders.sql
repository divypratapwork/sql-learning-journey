/*
Problem:
Get all customers who have not placed any orders.
*/

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;
