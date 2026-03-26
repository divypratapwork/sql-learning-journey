/*

Query: Filter Customers by Score Range

Problem Statement:
Retrieve customers whose score falls within a specific range.

Concepts Used:
- BETWEEN

Approach:
Use BETWEEN to filter records within a defined numeric range (inclusive).

Outcome:
Returns customers with scores between 100 and 750.
*/

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 750;
