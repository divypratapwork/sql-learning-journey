/*
Query: Apply Logical Conditions

Problem Statement:
Filter customers using multiple logical conditions.

Concepts Used:
- AND
- OR
- NOT

Approach:
Combine conditions to refine filtering results.

Outcome:
Returns customers based on combined logic rules.
*/

-- Customers from USA with score greater than 500
SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

-- Customers from USA OR with score greater than 500
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;

-- Customers NOT from USA
SELECT *
FROM customers
WHERE country <> 'USA';
