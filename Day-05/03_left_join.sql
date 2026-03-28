/*
Problem:
Retrieve all customers and their orders,
including customers who have not placed any orders.

Concepts used:
LEFT JOIN

Approach:
Keep all customers and match orders where available.

Result:
Returns all customers with NULL for missing orders.
*/

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id;
