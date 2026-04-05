/*
Problem:
Show all orders placed in February.

Concepts used:
MONTH

Approach:
Filter records where month = 2.

Result:
Returns all February orders.
*/

SELECT *
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2;
