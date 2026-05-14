/*
Problem:
Rank orders based on sales from highest to lowest.

Concepts used:
RANK, WINDOW FUNCTION

Approach:
Use RANK function on Sales column.

Result:
Returns sales ranking.
*/

SELECT 
    O.OrderID,
    O.OrderDate,
    O.Sales,
    RANK() OVER(ORDER BY O.Sales DESC) AS rank_sales
FROM Sales.Orders AS O;
