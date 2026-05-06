/*
Problem:
Count how many times each customer made orders with sales greater than 30.

Concepts used:
CASE, SUM, COUNT, GROUP BY

Approach:
Use CASE inside SUM to count orders conditionally.

Result:
Returns total orders and orders with sales greater than 30.
*/

SELECT 
    O.CustomerID,
    SUM(
        CASE 
            WHEN O.Sales >= 30 THEN 1
            ELSE 0
        END
    ) AS sales_greater_than_30,
    COUNT(*) AS total_orders
FROM Sales.Orders AS O
GROUP BY O.CustomerID
ORDER BY O.CustomerID;
