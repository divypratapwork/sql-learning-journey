/*
===========================================
Query: Filter Countries by Total Score
===========================================

Problem Statement:
Find countries where total customer score is greater than 800.

Concepts Used:
- GROUP BY
- HAVING
- SUM()

Approach:
Use HAVING to filter aggregated results after grouping.

Outcome:
Returns only high-performing countries.
*/

SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country
HAVING SUM(score) > 800;
