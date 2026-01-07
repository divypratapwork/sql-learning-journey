/*
Problem:
Retrieve customers whose score falls within a specific range.

Concepts used:
BETWEEN

Approach:
Use BETWEEN to filter records within a numeric range.

Result:
Returns customers with scores between 100 and 750.
*/

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 750;
