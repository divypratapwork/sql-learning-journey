/*
Problem:
Find total sales for each order status,
only for products 101 and 102.

Concepts used:
PARTITION BY, SUM, WHERE

Approach:
Filter products and calculate sales by order status.

Result:
Returns sales grouped by order status.
*/

SELECT 
    O.OrderID,
    O.OrderDate,
    O.OrderStatus,
    O.ProductID,
    O.Sales,
    SUM(O.Sales) OVER(PARTITION BY O.OrderStatus) AS total_sales
FROM Sales.Orders AS O
WHERE O.ProductID IN (101, 102);
