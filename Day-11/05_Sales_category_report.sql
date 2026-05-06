/*
Problem:
Generate sales category report.

Concepts used:
CASE, ORDER BY

Approach:
Categorize sales into High, Medium, and Low groups.

Result:
Returns categorized sales report.
*/

SELECT 
    O.OrderID,
    O.Sales,
    CASE 
        WHEN O.Sales >= 50 THEN 'HIGH'
        WHEN O.Sales < 50 AND O.Sales > 20 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS category
FROM Sales.Orders AS O
ORDER BY Sales DESC;
