/*
Problem Statement:
Find total score and total number of customers for each country.

Concepts Used:
- SUM()
- COUNT()
- GROUP BY

Approach:
Aggregate customer data country-wise to calculate total score and customer count.

Outcome:
Provides country-wise performance and customer volume.
*/

SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country;
