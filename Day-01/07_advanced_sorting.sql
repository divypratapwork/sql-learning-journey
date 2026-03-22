/*
===========================================
Query: Multi-Level Sorting
===========================================

Problem Statement:
Sort customers by country and highest score within each country.

Concepts Used:
- ORDER BY (multiple columns)
- ASC, DESC

Approach:
1. Sort by country (ascending)
2. Within each country, sort by score (descending)

Outcome:
Organized customer list with top scorers per country.
*/

SELECT *
FROM customers
ORDER BY country ASC, score DESC;
