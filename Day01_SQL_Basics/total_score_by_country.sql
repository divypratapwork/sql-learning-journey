/*
Problem Statement:
Calculate the total score for each country.

Concepts Used:
- SUM()
- GROUP BY

Approach:
Group customers by country and sum their scores.

Outcome:
Returns total customer score per country.
*/

SELECT 
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country;
