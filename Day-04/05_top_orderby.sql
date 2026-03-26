/*
Query: Retrieve Top and Recent Records

Problem Statement:
Retrieve highest, lowest, and most recent records.

Concepts Used:
- TOP
- ORDER BY

Approach:
Sort data and limit the number of returned rows.

Outcome:
Provides top-performing, lowest-performing, and recent records.
*/

-- Top 3 customers with highest score
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- Lowest 2 customers by score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC;

-- Most recent 2 orders
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;
