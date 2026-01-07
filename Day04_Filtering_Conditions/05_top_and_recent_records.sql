/*
Problem:
Retrieve top and recent records from tables.

Concepts used:
TOP, ORDER BY

Approach:
Order data appropriately and limit results using TOP.

Result:
Returns highest, lowest, and most recent records.
*/

-- Top 3 customers with the highest score
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- Lowest 2 customers by score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC;

-- Two most recent orders
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;
