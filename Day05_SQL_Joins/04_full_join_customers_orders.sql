/*
Problem:
Get all customers and all orders,
even if there is no match between them.
*/

SELECT *
FROM customers c
FULL JOIN orders o
ON c.id = o.customer_id;
