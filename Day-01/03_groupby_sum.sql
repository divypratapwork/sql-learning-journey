/*
===========================================
Query: Total Score per Country
===========================================

Problem Statement:
Calculate the total score for each country.

Concepts Used:
- SUM()
- GROUP BY

Approach:
Group customers by country and calculate total score using SUM().

Outcome:
Returns total score for each country.
*/

SELECT 
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country;
