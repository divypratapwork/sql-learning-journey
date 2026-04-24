/*
Problem:
Calculate price per product.

Concepts used:
NULLIF

Approach:
Avoid division by zero using NULLIF.

Result:
Returns price safely.
*/

SELECT 
    OrderID,
    Sales,
    Quantity,
    Sales / NULLIF(Quantity, 0) AS price
FROM Sales.Orders;
