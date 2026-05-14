/*
Problem:
Rank customers based on total sales.

Concepts used:
SUM, RANK, GROUP BY

Approach:
Calculate total sales per customer and rank them.

Result:
Returns customer sales ranking.
*/

SELECT 
    O.CustomerID,
    SUM(O.Sales) AS total_sales,
    RANK() OVER(ORDER BY SUM(O.Sales) DESC) AS rank_customers
FROM Sales.Orders AS O
GROUP BY O.CustomerID;
