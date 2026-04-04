/*
Problem:
Combine data from customers and employees into one result.

Concepts used:
UNION

Approach:
Select same columns from both tables and combine them.

Result:
Returns combined list without duplicates.
*/

SELECT 
    C.FirstName,
    C.LastName
FROM Sales.Customers AS C

UNION

SELECT 
    E.FirstName,
    E.LastName
FROM Sales.Employees AS E;
