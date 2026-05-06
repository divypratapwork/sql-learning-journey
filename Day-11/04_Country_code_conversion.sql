/*
Problem:
Retrieve customer details with abbreviated country codes.

Concepts used:
CASE

Approach:
Convert country names into short country codes.

Result:
Returns customer details with country codes.
*/

SELECT 
    C.CustomerID,
    C.FirstName,
    C.Country,
    CASE
        WHEN C.Country = 'Germany' THEN 'DE'
        WHEN C.Country = 'USA' THEN 'US'
        ELSE 'Not_Abbreviated'
    END AS country_code
FROM Sales.Customers AS C;

SELECT DISTINCT Country
FROM Sales.Customers;
