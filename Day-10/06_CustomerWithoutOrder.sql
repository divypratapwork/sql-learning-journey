/*
Problem:
List customers who have not placed any orders.

Concepts used:
LEFT JOIN, NULL filtering

Approach:
Join customers with orders and filter unmatched records.

Result:
Returns customers without orders.
*/

SELECT 
    C.CustomerID,
    C.FirstName,
    C.LastName,
    O.OrderID
FROM Sales.Customers AS C
LEFT JOIN Sales.Orders AS O
ON C.CustomerID = O.CustomerID
WHERE O.CustomerID IS NULL;
