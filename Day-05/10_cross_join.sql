/*
Problem:
Generate all possible combinations of customers and orders.

Concepts used:
CROSS JOIN

Approach:
Combine every row of customers with every row of orders.

Result:
Returns all possible pairs.
*/

SELECT *
FROM customers
CROSS JOIN orders;
