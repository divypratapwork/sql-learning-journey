/*
Problem Statement:
Find the average score for each country considering only customers
with a score greater than 0, and return countries with an average
score greater than 430.

Concepts Used:
- WHERE
- AVG()
- GROUP BY
- HAVING

Approach:
1. Exclude customers with zero score using WHERE.
2. Group customers by country.
3. Filter countries using HAVING on average score.

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
