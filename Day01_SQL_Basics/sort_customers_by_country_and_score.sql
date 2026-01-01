/*
Problem Statement:
Retrieve all customers and sort them by country and highest score within each country.

Concepts Used:
- ORDER BY (multiple columns)
- ASC and DESC

Approach:
1. Sort customers by country alphabetically.
2. Sort customers by score in descending order within each country.

Outcome:
Country-wise grouped customers with top scorers first.
*/

SELECT *
FROM customers
ORDER BY country ASC, score DESC;
