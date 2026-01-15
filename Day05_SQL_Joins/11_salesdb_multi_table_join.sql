/*
Problem:
Retrieve order details along with customer, product,
and sales employee information.

Concepts used:
LEFT JOIN, multi-table joins
*/

SELECT
    O.OrderID,
    C.FirstName AS customer_name,
    P.Product AS product_name,
    O.Sales,
    P.Price,
    E.FirstName AS sales_person
FROM Sales.Orders O
LEFT JOIN Sales.Customers C
    ON O.CustomerID = C.CustomerID
LEFT JOIN Sales.Products P
    ON P.ProductID = O.ProductID
LEFT JOIN Sales.Employees E
    ON E.EmployeeID = O.SalesPersonID;
