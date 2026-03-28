/*
Problem:
Retrieve all orders and their related customers,
including orders without customer records.

Concepts used:
RIGHT JOIN

Approach:
Keep all orders and match customers where possible.

Result:
Returns all orders with NULL for missing customers.
*/

SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.id = o.customer_id;
