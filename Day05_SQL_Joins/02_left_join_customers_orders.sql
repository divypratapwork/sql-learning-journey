/*
Problem:
Get all customers along with their orders,
including customers who have not placed any orders.
*/

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id;
