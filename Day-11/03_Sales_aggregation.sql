/*
Problem:
Aggregate sales based on High, Medium, and Low categories.

Concepts used:
CASE, SUM, GROUP BY

Approach:
Create categories using CASE and aggregate sales.

Result:
Returns total sales by category.
*/

SELECT 
    category,
    SUM(Sales) AS total_sales
FROM
(
    SELECT 
        O.Sales,
        CASE 
            WHEN O.Sales >= 50 THEN 'HIGH'
            WHEN O.Sales < 50 AND O.Sales > 20 THEN 'MEDIUM'
            ELSE 'LOW'
        END AS category
    FROM Sales.Orders AS O
) t
GROUP BY category
ORDER BY total_sales DESC;
