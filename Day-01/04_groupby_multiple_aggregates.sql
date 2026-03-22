/*
===========================================
Query: Total Score & Customer Count per Country
===========================================

Problem Statement:
Find total score and total number of customers for each country.

Concepts Used:
- SUM()
- COUNT()
- GROUP BY

Approach:
1. Group data by country
2. Use SUM() for total score
3. Use COUNT() for total customers

Outcome:
Provides country-wise performance and customer volume.
*/

SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country;
