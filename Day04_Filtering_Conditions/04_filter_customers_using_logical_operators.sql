/*
Problem:
Filter customers using logical conditions.

Concepts used:
AND, OR, NOT

Approach:
Apply logical operators to combine or exclude conditions.

Result:
Returns customers based on combined filtering rules.
*/

-- Customers from USA with score greater than 500
SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

-- Customers from USA or with score greater than 500
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;

-- Customers who are not from USA
SELECT *
FROM customers
WHERE country <> 'USA';
