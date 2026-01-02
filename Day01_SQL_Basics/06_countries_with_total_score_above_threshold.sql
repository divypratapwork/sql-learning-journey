/*
Problem Statement:
Find countries where the total customer score is greater than 800.

Concepts Used:
- SUM()
- GROUP BY
- HAVING

Approach:
Group customers by country and filter groups using HAVING.

Outcome:
Returns only high-performing countries based on total score.
*/

SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country
HAVING SUM(score) > 800;
