/*
Problem:
Retrieve all orders with customer, product, and employee details.

Concepts used:
Multiple JOINs

Approach:
Join orders with customers, products, and employees tables.

Result:
Returns detailed order information.
*/

SELECT 
    O.OrderID,
    C.FirstName AS customer_name,
    P.Product AS product_name,
    O.Sales,
    P.Price,
    E.FirstName AS sales_person
FROM Sales.Orders AS O
LEFT JOIN Sales.Customers AS C
ON O.CustomerID = C.CustomerID
LEFT JOIN Sales.Products AS P
ON P.ProductID = O.ProductID
LEFT JOIN Sales.Employees AS E
ON E.EmployeeID = O.SalesPersonID;
