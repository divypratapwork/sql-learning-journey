/*
===========================================
Query: Average Score Filtering
===========================================

Problem Statement:
Find average score per country for customers with score > 0,
and return countries with average score > 430.

Concepts Used:
- WHERE
- AVG()
- GROUP BY
- HAVING

Approach:
1. Filter rows using WHERE (score > 0)
2. Group by country
3. Filter groups using HAVING

Outcome:
Returns high-performing countries based on average score.
*/

SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score > 0
GROUP BY country
HAVING AVG(score) > 430;
