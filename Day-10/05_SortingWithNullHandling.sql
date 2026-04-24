/*
Problem:
Sort customers by score with NULLs appearing last.

Concepts used:
CASE, ORDER BY

Approach:
Use CASE to push NULL values to the end.

Result:
Returns sorted data with NULLs last.
*/

SELECT 
    CustomerID,
    FirstName,
    Score,
    CASE WHEN Score IS NULL THEN 1 ELSE 0 END AS flag
FROM Sales.Customers
ORDER BY 
    CASE WHEN Score IS NULL THEN 1 ELSE 0 END ASC,
    Score ASC;
