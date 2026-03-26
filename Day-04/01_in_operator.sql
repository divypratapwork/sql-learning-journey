/*
Query: Filter Customers by Multiple Countries

Problem Statement:
Retrieve customers from specific countries.

Concepts Used:
- IN operator

Approach:
Use IN to match multiple values in a single condition instead of multiple OR statements.

Outcome:
Returns customers belonging to the specified countries.
*/

SELECT *
FROM customers
WHERE country IN ('USA', 'India');
