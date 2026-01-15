/*
Problem:
Get all orders along with their customers,
including orders without matching customers.
*/

SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.id = o.customer_id;
