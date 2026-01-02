/*
Problem Statement:
Retrieve all customers and sort them by the highest score first.

Concepts Used:
- ORDER BY
- DESC

Approach:
Sort customer records in descending order of score.

Outcome:
Displays customers from highest to lowest score.
*/

SELECT *
FROM customers
ORDER BY score DESC;
