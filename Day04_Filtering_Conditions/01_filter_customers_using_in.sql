/*
Problem:
Retrieve customers from specific countries.

Concepts used:
IN

Approach:
Use IN to match multiple values in a single condition.

Result:
Returns customers from the specified countries.
*/

SELECT *
FROM customers
WHERE country IN ('USA', 'India');
